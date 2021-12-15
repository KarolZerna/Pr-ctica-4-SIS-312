require "page-object"
require "selenium-webdriver"

class HomePage
	include PageObject
	page_url("https://www.r-acad.com/courses/")

	h4(:home_title, :xpath => '/html/body/div[1]/div/div/div/div/main/div/form/div[1]/h4')
	link(:sign_up_link, :href => 'https://www.r-acad.com/registro/')
	link(:log_in_link, :href => 'https://www.r-acad.com/wp-login.php')

	
end

class SignUpPage
	include PageObject
	page_url("https://www.r-acad.com/registro/")

	h1(:sign_up_title, :xpath => '/html/body/h1')
	text_field(:mail, id: 'signup_email')
	text_field(:password, id: 'signup_password')
	text_field(:confirm_password, :id => 'signup_password_confirm')
	text_field(:name, :id => 'field_1')
	text_field(:lastname, :id => 'field_2')
	text_field(:userName, :id => 'field_3')
	button(:signup_submit, :value => 'Crear una cuenta')
end
