import pool from 'mysql2'

export const conection = pool.createPool({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'facebook'
})