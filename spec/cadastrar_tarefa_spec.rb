describe 'Cadastrar' do
    def login(field_email, field_password)
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json
        @login = Login.post('/sessions', body: @body)
    end

    context 'tarefas' do
        before {login('brunnobatista66@gmail.com','123456')}
            it 'com sucesso' do

            end
    end
    
end