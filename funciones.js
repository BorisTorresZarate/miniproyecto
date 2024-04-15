import { conection } from './conexion.js'
import path from 'node:path'
import fs from 'node:fs/promises'
export async function PagePrincipal(respuesta){
    const index = path.resolve("./public/index.html")
    const readIndex = await fs.readFile(index, 'utf8')
    respuesta.end(readIndex)
}
export function mostrarUsuario(respuesta){
    conection.query('SELECT * FROM usuarios', async (error, resultados) => {
        if (error) {
            console.error(error);
            respuesta.writeHead(500, { 'Content-Type': 'application/json' });
            respuesta.end(JSON.stringify({ error: 'Error al consultar la base de datos' }));
        } else {
            respuesta.writeHead(200, { 'Content-Type': 'application/json' });
            respuesta.end(JSON.stringify(resultados));
        }
    });
}

export function exportarDB(respuesta){
    // consulta query de los datos desde MySQL
    conection.query('SELECT * FROM usuarios', function (error, data) {
        if (error){
            //mostrar error
            respuesta.writeHead(500, { 'Content-Type': 'application/json' });
            respuesta.end(JSON.stringify({ error: 'Error al consultar la base de datos' }));
        }else{
            // Convertir los datos a formato CSV
            const csvData = convertToCSV(data);
            // guardar los datos CSV a un archivo
            saveToFile(csvData, 'usuarios.csv');
            //mostrar respuesta
            respuesta.writeHead(200, 'Content-Type', 'application/json')
            respuesta.end(JSON.stringify('Database exportado al archivo usuarios.csv'))
        }
    });


}
// Convertir los datos a formato CSV
export function convertToCSV(data) {
    // Definir el emcabezado de la fila para el archivo CSV
    const headers = Object.keys(data[0]);
    //definir las filas 
    const rows = data.map(row => headers.map(header => `${row[header]}`).join(','));
    //retorna el header con las filas incluidas
    return `${headers.join(',')}\n${rows.join('\n')}`;
}

// guardar los datos CSV a un archivo
export async function saveToFile(data, filename) {
    await fs.writeFile(filename, data, error => {
        if (error) {
            console.log(error + 'archivo csv no creado')
        }
    })
}

export async function importarDatos(respuesta){
    try {
        const fileData = await fs.readFile('usuarios.csv', { encoding: 'utf-8' })
        const rows = fileData.split('\n')
        const rows1 = rows.shift()
        const rowsFormated = rows.filter(r => r !== '')
        for (const row of rowsFormated) {
            const [id, nombre, apellido, direccion, correo_electronico, dni, edad, fecha_creacion, telefono] = row.split(',');
            const fechaDate = new Date(fecha_creacion)
            const fechaFormateada = `${fechaDate.getFullYear()}-${fechaDate.getMonth() + 1}-${fechaDate.getDate()}`
            const result =  conection.execute(
                `INSERT INTO usuarios (id,nombre,apellido,direccion,correo_electronico,dni,edad,fecha_creacion,telefono) VALUES (?,?,?,?,?,?,?,?,?)`,
                [id, nombre, apellido, direccion, correo_electronico, dni, edad, fechaFormateada, telefono])
        }
        respuesta.writeHead(200,{'Content-Type': 'application/json'})
        respuesta.end('Datos importados correctamente')   
    } catch (error) {
        console.error("Error al consultar usuario:", error);
        throw error;
    }
}
