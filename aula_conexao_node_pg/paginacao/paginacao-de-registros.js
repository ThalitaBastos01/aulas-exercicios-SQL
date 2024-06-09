// app.get('/', async (req, res) => {
//   const { pagina, porPagina } = req.query
   
 //   try {
        
       

//        const query = 'select * from pessoas order by id asc limit $1  offset $2'

//        const offset = pagina === 1 ? 0 : (pagina -1)*porPagina

//      const resultado = await pool.query(query, [porPagina, offset])
  //     return res.json/(resultado.rows)

  //  } catch (error) {
  //      console.log(error.massage);
 //   }
//})