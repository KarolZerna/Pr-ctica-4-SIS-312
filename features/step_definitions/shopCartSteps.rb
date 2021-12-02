Given('I find the {string} course') do |milk|
  page.should have_content(milk)
end
  
  Given('I click on Como hacer milkshakes') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[3]/div/div[2]/h2/a'
    find(:xpath, xpath).click
  end
  
  Given('I’m able to see the {string} title') do |des|
    page.should have_content(des)
  end
  
  Given('I click on the Sign up button') do
    xpath = '/html/body/div[2]/div/div/div/div/main/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/a'
    find(:xpath, xpath).click
  end
  
  Then('I should see a new page with the option {string}') do |add|
    page.should have_content(add)
  end
  
  Then('click on Añadir al carrito') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div[2]/div[2]/form/button'
    find(:xpath, xpath).click
  end
  
  Given('I should see the cart with a red tag that increases in {int}') do |int|
    number = '1'
    find(:xpath, '//*[@id="header-aside"]/div/div[1]/a/span/span', :text => number)
  end

  Given('I click on the cart icon which is in the upper right corner of the page') do
    xpath = '//*[@id="header-aside"]/div/div[1]/a/span/span'
    find(:xpath, xpath).click
  end
  
  Then('I should see a the course that I have ordered already') do
    course = "Como hacer milkshakes"
    find(:xpath, '//*[@id="header-aside"]/div/div[1]/section/div/ul/li/a[2]', :text => course)
  end

  When('I click on the ‘x’ icon that is next to the course') do
    xpath = '//*[@id="header-aside"]/div/div[1]/section/div/ul/li/a[1]'
    find(:xpath, xpath).click
  end

  Then('I click on the cart icon') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should’n see courses but I can see a message') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  