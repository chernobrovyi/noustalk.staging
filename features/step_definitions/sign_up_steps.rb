require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'

service_to_firefox_local = Selenium::WebDriver::Service.chrome(path: '/home/valeriy/Projects/ENV/browsers/firefox/geckodriver')
url = 'https://staginga.noustalk.com/'

@browser = Selenium::WebDriver.for :firefox, service: service_to_firefox_local

Given(/^Go to start page for sign up$/) do
  @browser.get url

        var date = new Date()

      def class GenUserDataClass
  
                this.perentsName = perentsName
                this.perentsEmail = perentsEmail
                this.perentsPass = perentsPass
                this.profileChildName = profileChildName
                this.profileChildBirthday = profileChildBirthday

            perentsName = "perentsName" + date.getDate() + date.getMonth() + date.getFullYear()
            perentsEmail = perentsName + "@mailforspam.com"
            perentsPass = perentsName
            profileChildName = "profileChildName" + date.getDate() + date.getMonth() + date.getFullYear()
            profileChildBirthday = date.getDate() + date.getMonth() + (date.getFullYear() - 5)
      end

      newUserGen = new GenUserDataClass()
end

When(/^Start page is loading$/) do
  pending
end

Then(/^Click to button "Don't have an account\?"$/) do
  pending
end

When(/^Sign up page is loading$/) do
  pending
end

Then(/^Fill in the input fields$/) do
  // Next steps new page
        @browser.get('input[id="profile_child_name"]')
        .type(newUserGen.profileChildName)
        .should("have.value", newUserGen.profileChildName);
        @browser.get('input[id="profile_child_birthday"]')
        .type(newUserGen.profileChildBirthday)
        .should("have.value", newUserGen.profileChildBirthday);
        @browser.get('button[class="btn-submit"]')
        .submit();
end
end

When(/^Input fields if fill$/) do
  //@browser.get('a[class="elementor-button-link elementor-button elementor-size-lg elementor-animation-bob"]').click();
        @browser.get('a[signUp header-link-trackable show]')
        .click();
        @browser.get('input[id="sign_up_name"]')
        .type(newUserGen.perentsName)
        .should("have.value", newUserGen.perentsName);
        @browser.get('input[id="sign_up_email"]')
        .type(newUserGen.perentsEmail)
        .should("have.value", newUserGen.perentsEmail);
        @browser.get('input[id="sign_up_password"]')
        .type(newUserGen.perentsPass)
        .should("have.value", newUserGen.perentsPass);
        @browser.get('button[class="btn-submit"]');
end

Then(/^Click to button "([^"]*)"$/) do
  @browser.get('form[class="ElementsApp"]')
end