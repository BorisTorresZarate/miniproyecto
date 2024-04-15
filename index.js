import {PagePrincipal, mostrarUsuario, exportarDB,importarDatos} from './funciones.js'
import http from 'node:http'
import { conection } from './conexion.js'
import path from 'node:path'
import fs from 'node:fs/promises'

const server = http.createServer(solicitudes)
server.listen(3000, console.log("servidor corriendo en el puerto 3000"))

async function solicitudes(solicitud, respuesta) {
    try {
        const url = solicitud.url
        switch (url) {
            case '/':
                PagePrincipal(respuesta)
                break;

            case '/api/usuarios':
                mostrarUsuario(respuesta)
                break;

            case '/api/usuarios/export':
                exportarDB(respuesta)
                break;

            case '/api/usuarios/import':
                importarDatos(respuesta)
                break;

            default:
                respuesta.statusCode = 404
                respuesta.end('No se encuentra el recurso solicitado')
                break;
        }
    } catch (error) {
        respuesta.end('error');
    }
}
