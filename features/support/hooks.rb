Before do
    driver.start_driver
end

Before('@cadastro_user') do
    driver.find_element(:xpath, "//android.widget.TextView[@text='New User? Register']").click
    driver.find_element(:id, "com.example.vamsi.login:id/etRegName").send_keys 'Monique'
    driver.find_element(:id, "com.example.vamsi.login:id/etRegPhone").send_keys '11912121212'
    driver.find_element(:id, "com.example.vamsi.login:id/etRegGmail").send_keys 'monique@rd.com.br'
    driver.find_element(:id, "com.example.vamsi.login:id/etRegPassword").send_keys '147258'
    driver.find_element(:id, "com.example.vamsi.login:id/btnRegLogin").click
    driver.find_element(:id, "com.example.vamsi.login:id/btnGotoLogin").click
end

After do
    driver.driver_quit
    $logger.info('Teste finalizado')
end
