Quando('eu inserir um {string} e {string}') do |email, password|
  @login = Login.new
  @login.login_user(email, password)
end

Quando('clicar em login') do
  @login.click_button_login
end

Entao('o app deve mostrar a home logada') do
  @login.validate_logged_in
end

Entao('o app deve mostrar mensagem de erro') do
  @login.validate_toast_error
end
