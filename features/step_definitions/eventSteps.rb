Given('I click on the Eventos section that is on the upper left corner of the page') do
    xpath = '/html/body/div[1]/header/div[1]/nav/div/ul/li[3]/a'
    find(:xpath, xpath).click
end
  
When('I see the {string} page') do |page|
    page.should have_content(page)
end
  
And('I click on Eventos Anteriores') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/div[3]/div[3]/nav/ul/li/a'
    find(:xpath, xpath).click
end

Then('I should see a new page about past events of Rottweiler’s Academy like {string}') do |string|
    
end