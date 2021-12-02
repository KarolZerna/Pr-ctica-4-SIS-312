Given('I have browsed to the Rottweiler’s Academy course page') do
    page.driver.browser.manage.window.maximize
    visit('https://www.r-acad.com/courses/')
  end
  
Given('I click on the Course section that is on the upper left corner of the page') do
    xpath = '/html/body/div[1]/header/div[1]/nav/div/ul/li[2]/a'
    find(:xpath, xpath).click
 end

  And('I see the Rottweiler’s Academy full course catalog with {string} title') do |title|
    page.should have_content(title)
  end
  
  And('I click on the button that says “Alfabetico”') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/form/div[2]/div/div[1]/div[1]/select'
    find(:xpath, xpath).click
  end
  
  When('I click on the “Mi progreso” text from the dropdown menu') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/form/div[2]/div/div[1]/div[1]/select/option[3]'
    find(:xpath, xpath).click
 end
  
  Then('I should see all courses I have signed up with the text {string}') do |lastActivity|
    page.should have_content(lastActivity)
  end