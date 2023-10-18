module Cadastrar
    include HTTParty
    base_uri 'http://localhost:3000/'
    format :json
    headers Accept: 'application/vnd.tasksmanagers.v2',
        'Content-Type': 'application/json'
end