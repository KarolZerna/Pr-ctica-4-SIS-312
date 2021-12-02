Given('I have browsed to the Rottweiler’s Academy registration page') do
    page.driver.browser.manage.window.maximize
    visit('https://www.r-acad.com/registro/')
end
  
  Given('I see the Rottweiler’s Academy registration page with {string} title') do |title|
    page.should have_content(title)
  end
  
  Given('I fill in the email address field with {string}') do |email|
    fill_in 'signup_email', :with => email
  end
  
  Given('I fill in the password field with {string}') do |password|
    fill_in 'signup_password', :with => password
  end
  
  Given('I fill in the confirmation password field with {string}') do |confpassword|
    fill_in 'signup_password_confirm', :with => confpassword
  end
  
  Given('I fill in the name field with {string}') do |name|
    fill_in 'field_1', :with => name
  end
  
  Given('I fill in the last name field with {string}') do |lastname|
    fill_in 'field_2', :with => lastname
  end
  
  Given('I fill in the username field with {string}') do |user|
    fill_in 'field_3', :with => user
  end
  
  When('I press the Crear una cuenta button') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div/form/div[4]/input'
    find(:xpath, xpath).click
  end

  Then('I should see an error message {string} that explains the fields need to be in a correct format') do |errorMes|
    page.should have_content(errorMes)
  end
  
  Then('I should see an error message {string} that explains the data fields need to be filled') do |errorMessage|
    page.should have_content(errorMessage)
  end