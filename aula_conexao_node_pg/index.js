const express = require('express')
const pool = require('./conexao')



const app = express()

app.use(express.json())

app.get('/', async (req, res) => {
    const { id } = req.params
   
    try {
        //const query = 'select * from empresas where nome = $1 or nome = $2'
        //const params = ['Google', 'Facebook']

        const query = 'select e.id as empresaId, f.id as filialId, e.nome, f.pais, p.nome as funcionario from empresas e inner join filiais f on e.id = f.empresa_id join pessoas p on e.id = p.empresa_id;'
       

      const resultado = await pool.query(query)
       return res.json(resultado.rows)

    } catch (error) {
        console.log(error.massage);
    }
})

app.listen(3000)

//const query = 'select * from empresas where nome = $1 or nome = $2' --- passando mais de 1 parametro.

// clausula JOIN - É uma clausula sql que permite agrupar registros de duas ou mais tabelas em uma unica consulta. : inner join , full join, left join e right join