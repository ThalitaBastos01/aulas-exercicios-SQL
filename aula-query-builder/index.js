const express = require('express')
const knex = require('./conexao')

const app = express();

app.use(express.json());

app.get('/', async (req, res) => {
    //conexao.query('select * from "agenda"')
    // const agenda = await knex('agenda').debug();
    // const agenda = await knex.raw('select * from "agenda"') // query bruta

    //select com where
    // const agenda = await knex('agenda').where('id', 5).debug();

    //agora quero que ele busque todos os id seja diferente de 5 
    // const agenda = await knex('agenda').where('id','!=', 5).debug();

    // buscando como objeto
    // const agenda = await knex('agenda').where({ id: 5 }).debug();

    //buscando o primeiro registro dentro da consulta que estamos fazendo ultilizamos o first
    // const agenda = await knex('agenda').where({ id: 5 }).first().debug();

    //agora eu quero retornar mas não com todos os campos usando o select antes do first
    const agenda = await knex('agenda').where({ id: 5 }).select('id', 'nome').first().debug();



    return res.json(agenda)
});

app.listen(3000);