

const knex = require('knex')({
    client: 'pg',
    connection: {
      host: 'localhost',
      port: '5432',
      user: 'postgres',
      password: '174029',
      database: 'knexjs',
    },
});

module.exports = knex;