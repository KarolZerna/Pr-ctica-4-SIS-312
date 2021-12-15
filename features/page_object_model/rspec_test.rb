require "selenium-webdriver"
require "./courses.rb"
require "page-object"

#Generate result in HTML format 
#rspec rspec_test.rb --format html --out rspec_result.html
#rake rspec_report:html
#rake rspec_report:browser

describe "Test Home Page" do

	before(:all) do
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.window.maximize
		@wait = Selenium::WebDriver::Wait.new(:timeout => 15)
	end
	
	after(:all) do
		@driver.quit
	end

	it "loads home page" do
		home_page = HomePage.new(@driver)
		home_page.goto
		@wait.until {home_page.home_title}
		expect(home_page.home_title == "Cursos").to be true
	end

    it "loads sign up page" do
		home_page = HomePage.new(@driver)
		home_page.goto
		@wait.until {home_page.sign_up_link_element}
		home_page.sign_up_link
		sign_up_page = SignUpPage.new(@driver)
		@wait.until {sign_up_page.sign_up_title}
		expect(sign_up_page.sign_up_title == "Crear una cuenta").to be true
	end
end

