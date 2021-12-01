Given('I have browsed to the Rottweiler’s Academy login page') do
    page.driver.browser.manage.window.maximize
    visit('https://www.r-acad.com/wp-login.php')
end

Given('I click on the “Crear una cuenta” yellow text') do
    xpath = '//*[@id="login"]/div[1]/span/a'
    find(:xpath, xpath).click
end

Given('I fill {string} in the email address field') do |eMail|
    fill_in 'signup_email', :with => eMail
end

Given('I fill {string} in the password field') do |pass|
    fill_in 'signup_password', :with => pass
end

Given('I fill {string} in the confirmation password field') do |confpass|
    fill_in 'signup_password_confirm', :with => confpass
end

Given('I fill {string} in the name field') do |name|
    fill_in 'field_1', :with => name
end

Given('I fill {string} in the last name field') do |lastname|
    fill_in 'field_2', :with => lastname
end

Given('I fill {string} in the username field') do |user|
    fill_in 'field_3', :with => user
end

When('I press the create ccount button') do
    xpath = '//*[@id="signup_submit"]'
    find(:xpath, xpath).click
end

Then('I should see an error message {string}') do |errorMessage|
    page.has_content?(errorMessage)
end