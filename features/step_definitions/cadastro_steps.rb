Dado('que eu tenha acesso ao app') do
  @login = Login.new
  @cadastro = Cadastro.new
end

Quando('eu clicar em {string}') do |string|
  @login.click_in_register
  @cadastro.validate_screen_register
end

Quando('realizar o cadastro com dados:') do | table |
  user_info = table
  @cadastro.register_user(user_info)
end

Entao('o cadastro deve ser realizado com sucesso') do
  @cadastro.validate_toast_successful
end
