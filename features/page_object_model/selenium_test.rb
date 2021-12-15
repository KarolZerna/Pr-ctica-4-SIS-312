require "selenium-webdriver"
require "./courses.rb"
require "page-object"

@driver = Selenium::WebDriver.for :chrome
@driver.manage.window.maximize
@wait = Selenium::WebDriver::Wait.new(:timeout => 10)

home_page = HomePage.new(@driver)
home_page.goto
@wait.until {home_page.home_title}

if home_page.home_title == "Cursos"
	puts "Page loaded"
else
	puts "Page didn't load"
end

@driver.quit

sign_up_page = SignUpPage.new(@driver)
sign_up_page.goto
@wait.until {sign_up_page.sign_up_title}

if sign_up_page.sign_up_title == "Crear una cuenta"
	puts "Page loaded"
else
	puts "Page didn't load"
end

@driver.quit