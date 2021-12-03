When('I click on the {string} option from the dropdown menu') do
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/div/div/ul/li[2]/a'
    find(:xpath, xpath).click
end

Then('I should see all my account details like {string} , {string} and {string}') do |name, lastname, userName|
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[2]/p', :text => name)
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[2]/td[2]/p', :text => lastname)
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[2]/p', :text => userName)
end
  
  Given('I click on the "Ver" option from the profile dropdown menu') do
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/div/div/ul/li[2]/div/ul/li[1]/a'
    find(:xpath, xpath).click
  end
  
  Given('I see my account profile with details') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div/h3'
    find(:xpath, xpath).click
    end
  
  When('I click on the "Editar el perfil" button') do
    xpath ='/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/header/a'
    find(:xpath, xpath).click
    end
  
  When('I see "Editar la información" de "Details" page') do
    xpath ='/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/h2'
    find(:xpath, xpath).click    
    end
  
  When('I write {string} on the name field') do |name|
     fill_in 'field_1', :with => name
  end
  
  When('I click the "Guardar los cambios" button') do
    xpath ='/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/form/div[4]/input'
    find(:xpath, xpath).click
  end
  
  Then('I should see a message with the confirmation "Cambios guardados"') do 
    xpath ='/html/body/div[1]/div/div/div/div/main/article/div/div/div[1]/aside/p'
    find(:xpath, xpath).click   
  end
  
  Given('I see the inbox page') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the "Escriba los nombres de una o más personas" text field') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div[2]/form/span/span[1]/span/ul/li/input'
    find(:xpath, xpath).click   
  end
  
  When('I write {string}') do |receptor|
    fill_in 'select2-search__field' :with => receptor
  end
  
  When('I click on the {string} text box') do |string|
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div[2]/form/div[3]/div[1]/div' 
    find(:xpath, xpath).click
  end
  
  Then('I should see the message sent on the "Sebastián" chat') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[1]/div/header/dl/dt/span/a'
    find(:xpath, xpath).click
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


  When('I am at the Profile page') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see all my account details like {string} {string} and {string}') do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the "Guardar los cambios" button') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div/div/div/div/div/div/form/div[4]/input'
    find(:xpath, xpath).click  
end