require "selenium-webdriver"
require "./courses.rb"
require "page-object"

@driver = Selenium::WebDriver.for :chrome
@driver.manage.window.maximize
@wait = Selenium::WebDriver::Wait.new(:timeout => 15)

home_page = HomePage.new(@driver)
home_page.goto
@wait.until {home_page.home_title}

if home_page.home_title == "Cursos"
	puts "Page loaded"
else
	puts "Page didn't load"
end

@driver.quit