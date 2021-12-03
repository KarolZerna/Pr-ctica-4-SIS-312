Given('I have browsed to the Rottweiler’s Academy login page') do
    page.driver.browser.manage.window.maximize
    visit('https://www.r-acad.com/wp-login.php')
  end
 
 Given('I click on the button that says {string}') do |userName|
    page.should have_content(userName)
  end
  
  Given('I click on the "Perfil" option from the dropdown menu') do
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/div/div/ul/li[2]/a'
    find(:xpath, xpath).click
  end
  
  When('I click on the {string} option from the profile dropdown menu') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see all my account details like {string} , {string} and {string}') do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I click on the {string} option from the profile dropdown menu') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I see my account profile with details') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the {string} button') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I see “Editar la información de {string} page') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I write {string} on the name field') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click the {string} button') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see a message with the confirmation {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I see the inbox page') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the {string} text field') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I write {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the {string} text nox') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see the {string} on the {string} chat') do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I see {string} page') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I write {string} on the lastname field') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see an error message') do
    pending # Write code here that turns the phrase above into concrete actions
  end