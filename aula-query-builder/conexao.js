const knex = require('knex')({
    client: 'pg',
    connection: {
      host: 'localhost',
      port: 3000,
      user: 'postgres',
      password: '174029',
      database: 'knexjs',
    },
});

module.exports = knex;