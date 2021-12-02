Given('I find the {string} course') do |milk|
  page.should have_content(milk)
end
  
  Given('I click on Como hacer milkshakes') do
    xpath = '/html/body/div[1]/header/div[2]/div[1]/div[3]/div/section/div/ul/li[2]/a[2]'
    find(:xpath, xpath).click
  end
  
  Given('I’m able to see the {description} of the course') do |des|
    # /html/body/div[1]/div/div/div/div/main/div[2]/div[3]/div/h2
    page.should have_content(des)
  end
  
  Given('I click on the Sign up button') do
    xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[2]'
    find(:xpath, xpath).click
  end
  
  Then('I should see a new page with the option {string}}') do |add|
    page.should have_content(des)
  end
  
  Then('click on it') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('now I should see the cart with a red tag that increases in {int}') do |int|
  # Then('now I should see the cart with a red tag that increases in {float}') do |float|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I have one or more products in my cart that is shown with a red tag with the current product quantity') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the cart icon which is in the upper right corner  of the page') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see a drop down list with the courses I have ordered already') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I click on the cart icon') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I see the “Como hacer milkshakes” course on the cart list') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I click on the ‘x’ icon that is next to the course') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see the cart with a red tag that decreases in {int}') do |int|
  # Then('I should see the cart with a red tag that decreases in {float}') do |float|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I shouldn’t see the “Como hacer milkshakes” course on the cart list anymore.') do
    pending # Write code here that turns the phrase above into concrete actions
  end