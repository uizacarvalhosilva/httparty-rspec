describe 'Cadastrar' do
    def login(field_email,field_password)
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json
        @login = Login.post('/sessions', body: @body)
    end

    context 'tarefas' do
    before {login('teste@gmail.com','123456')}
        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: 'application/vnd.tasksmanager.v2',
                Authorization: @login.parsed_response['data']['attributes']['auth-token']
            }
            @body = {
                task: {
                    title: 'Tarefa',
                    description: 'Descrição da tarefa 122',
                    deadline: '2023-10-27 15:00:00',
                    done: true
                }
            }.to_json
            @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
            puts @tarefas
        end
    end
    
end