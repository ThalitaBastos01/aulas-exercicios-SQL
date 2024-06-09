const express = require('express')
const pool = require('./conexao')



const app = express()

app.use(express.json())

app.get('/:id', async (req, res) => {
    const { id } = req.params

    try {
        const resultado = await pool.query(`select * from empresas where id = ${id}`)

        return res.json(resultado.rows)

    } catch (error) {
        console.log(error.massage);
    }
})

app.listen(3000)
