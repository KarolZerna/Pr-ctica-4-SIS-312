Then('I should see the {string} label') do |label|
    page.should have_content(label)
end

Then('I’m able to see the description of the course like {string}') do |desc|
    page.should have_content(desc)
end

When('I click on Curso Básico de Robótica con Arduino') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[5]/div/div[2]/h2/a'
    find(:xpath, xpath).click
end

  When('I click on the Start course button') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/a'
    find(:xpath, xpath).click
  end

  Then('I should see a new page with all the lessons offered by the course and a button to go back that says {string}') do |desc|
    page.should have_content(desc)
end

Given('I scroll the page') do
    page.execute_script('window.scrollTo(0, 300)')
end