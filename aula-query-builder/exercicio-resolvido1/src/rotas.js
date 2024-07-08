const express = require('express');
const { listar, obter } = require('./controladores/usuarios');

const rotas = express();

rotas.get('./usuarios', listar)
rotas.get('./usuarios/:id', obter)
rotas.post('./usuarios', usuarios.cadastrar)
rotas.put('./usuarios/:id', usuarios.atualizar)
rotas.delete('./usuarios/:id', usuarios.excluir)

module.exports = rotas
