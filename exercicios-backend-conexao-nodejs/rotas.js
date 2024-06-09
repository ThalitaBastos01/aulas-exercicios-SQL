const express = require('express');
const { cadastrarAutor, obterAutor, cadastrarLivroAutor } = require('./controladores/autores');

const rotas = express()

rotas.post('/autor', cadastrarAutor);
rotas.get('/autor/:id', obterAutor)
rotas.post('/autor/:id/livro', cadastrarLivroAutor)

module.exports = rotas