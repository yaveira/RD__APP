Dado('que eu esteja com o app aberto') do
  @cadastro = Cadastro.new
end

Quando('eu clicar em Cadastro') do
  @cadastro.click_in_register
end

Entao('devo visualizar a tela de Cadastro') do
  @cadastro.validate_screen_register
end
