require "page-object"
require "selenium-webdriver"

class HomePage
	include PageObject
	page_url("https://www.r-acad.com/courses/")

	#define elements in HOME PAGE
	h4(:home_title, :xpath => '/html/body/div[1]/div/div/div/div/main/div/form/div[1]/h4')
	link(:sign_up_link, :href => 'https://www.r-acad.com/registro/')
	link(:log_in_link, :href => 'https://www.r-acad.com/wp-login.php')
	#define functions used in HOME PAGE
	
end
