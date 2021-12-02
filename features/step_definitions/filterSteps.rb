Given('I have browsed to the Rottweiler’s Academy course page') do
    page.driver.browser.manage.window.maximize
    visit('https://www.r-acad.com/courses/')
  end
  
  Then('I see the Rottweiler’s Academy full course catalog with {string} title') do |title|
    page.should have_content(title)
  end
  
  When('I click on the button that says “Alfabetico”') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I click on the “Mi progreso” text from the dropdown menu') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I should see all courses I have signed up') do
    pending # Write code here that turns the phrase above into concrete actions
  end