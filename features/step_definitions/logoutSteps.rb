Given('I click on {string} button that is on the upper right corner of the page') do |string|
    xpath = '//*[@id="header-aside"]/div/div[1]/a/span'
    find(:xpath, xpath).click
  end
  
  When('I click on Logout') do
    xpath = '//*[@id="header-aside"]/div/div[1]/div/div/ul/li[9]/a'
    find(:xpath, xpath).click
  end
  
  Then('I should see a new page about Rottweiler’s Academy with the option {string}') do |login|
    page.should have_content(login)
  end