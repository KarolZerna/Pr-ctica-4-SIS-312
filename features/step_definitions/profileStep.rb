When('I click on the {string} option from the dropdown menu') do |string|
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/div/div/ul/li[2]/a'
    find(:xpath, xpath).click
  end

When('I click on the {string} option from the profile dropdown menu') do |string|
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/div/div/ul/li[2]/div/ul/li[1]/a'
    find(:xpath, xpath).click
  end
  
  Then('I should see all my account details like {string} , {string} and {string}') do |name, lastname, userName|
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[2]/p', :text => name)
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[2]/td[2]/p', :text => lastname)
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[2]/p', :text => userName)
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