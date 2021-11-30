Given('I have browsed to the Rottweiler’s Academy login page') do
  page.driver.browser.manage.window.maximize
   visit('https://www.r-acad.com/wp-login.php')
end

Given('I have entered {string} into the email field') do |eMail|
  fill_in 'log', :with => eMail
  
end

Given('I have entered {string} into the password field') do |password|
  fill_in 'pwd', :with => password
end

When('I press the access button') do
  xpath = '//*[@id="wp-submit"]'
  find(:xpath, xpath).click
end

Then('I should see my welcome message {string} in the main page') do |userName|
  page.should have_content(userName)
end


Then('I should see an error message {string}') do |errorMessage|
  page.has_content?(errorMessage)
  
end

Then('I should see an message {string}') do |passwordMessage|
  page.has_content?(passwordMessage)
end

Then('I should see {string} message') do |passwordEmpty|
  page.has_content?(passwordEmpty)
end

Then('I should see {string} error message') do |noPassword|
  page.has_content?(noPassword)
end

Given('I have entered {string} into de password field') do |justPwd|
  fill_in 'pwd', :with => justPwd
end