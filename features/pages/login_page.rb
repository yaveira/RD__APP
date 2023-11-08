class Login

  def initialize()
    @xpath_button_register = "//android.widget.TextView[@text='New User? Register']"
    @id_field_email = "com.example.vamsi.login:id/etLogGmail"
    @id_field_password = "com.example.vamsi.login:id/etLoginPassword"
    @id_button_login = "com.example.vamsi.login:id/btnLogin"
    @xpath_toast_error = "//android.widget.Toast[@text='Login error']"
    @xpath_logged_in = "//android.widget.TextView[@text='You are now logged in']"
  end

  def click_in_register
    driver.find_element(:xpath, @xpath_button_register).click
  end

  def login_user(email, password)
    driver.find_element(:id, @id_field_email).send_keys email
    driver.find_element(:id, @id_field_password).send_keys password
  end

  def click_button_login
    driver.find_element(:id, @id_button_login).click
  end

  def validate_toast_error
    driver.wait_true() { driver.exists { driver.find_element(:xpath, @xpath_toast_error) } }
  end

  def validate_logged_in
    driver.wait_true() { driver.exists { driver.find_element(:xpath, @xpath_logged_in) } }
  end
end
