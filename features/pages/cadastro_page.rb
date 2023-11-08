class Cadastro

    def initialize()
      @xpath_button_register = "//android.widget.TextView[@text='New User? Register']"
      @xpath_screen_register = "//android.widget.TextView[@text='Registration']"
    end

    def click_in_register
        driver.find_element(:xpath, @xpath_button_register).click
    end

    def validate_screen_register
        driver.wait_true() { driver.exists { driver.find_element(:xpath, @xpath_screen_register) } }
    end

end
