class Cadastro

    def initialize()
      @xpath_screen_register = "//android.widget.TextView[@text='Registration']"
      @id_field_name = "com.example.vamsi.login:id/etRegName"
      @id_field_phone = "com.example.vamsi.login:id/etRegPhone"
      @id_field_email = "com.example.vamsi.login:id/etRegGmail"
      @id_field_password = "com.example.vamsi.login:id/etRegPassword"
      @id_button_register = "com.example.vamsi.login:id/btnRegLogin"
      @xpath_toast_success = "//android.widget.Toast[@text='Registration Successful']"
    end

    def validate_screen_register
        driver.wait_true() { driver.exists { driver.find_element(:xpath, @xpath_screen_register) } }
    end

    def register_user(user_info)
        name = user_info.raw[1][0]
        phone = user_info.raw[1][1]
        email = user_info.raw[1][2]
        password = user_info.raw[1][3]

        driver.find_element(:id, @id_field_name).send_keys name
        driver.find_element(:id, @id_field_phone).send_keys phone
        driver.find_element(:id, @id_field_email).send_keys email
        driver.find_element(:id, @id_field_password).send_keys password
        driver.find_element(:id, @id_button_register).click
    end

    def validate_toast_successful
        driver.wait_true() { driver.exists { driver.find_element(:xpath, @xpath_toast_success) } }
    end
end
