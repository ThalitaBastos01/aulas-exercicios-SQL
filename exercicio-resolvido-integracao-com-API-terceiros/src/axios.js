const axios = require('axios')

const instanciaAxios = axios.create({
    baseURL: 'https://companyenrichment.abstractapi.com/v2',
    params: {
        api_key: '3d628df7d15d49b88996e7c0cd6660b5'
    }
})

module.exports = instanciaAxios