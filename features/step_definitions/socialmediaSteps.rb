Given('I scroll down to the end of the page') do
    page.execute_script('window.scrollTo(0, document.body.scrollHeight)')
  end
  
  When('I click the Facebook icon at the bottom right corner') do
    xpath = '/html/body/div[1]/footer/div/div[2]/ul/li[1]/a'
    find(:xpath, xpath).click
  end
  
  Then('I should visit Rottweiler Academy’s Facebook fanpage') do
    visit('https://www.facebook.com/RottweilerGroupSRL/')
  end