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

Then ('I click on the lesson Entradas y salidas Digitales') do
    xpath = '//html/body/div[1]/div/div/div/div/main/article/div/div/div/div/div[1]/div/div[4]/ol/li[3]/a'
    find(:xpath, xpath).click
end

Then('I should see a youtube video and a description that says {string}') do |descLesson|
    page.should have_content(descLesson)
end

Then('I click on the lesson Introducción a Arduino') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div/div/div[1]/div[1]/div[4]/ol/li[1]/a'
    find(:xpath, xpath).click
end

Then('I should see a button that says {string}') do |button|
    page.should have_content(button)
end

When('I click on the Start course button that says Inicio Curso') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/a'
    find(:xpath, xpath).click
  end

  Then('I click on the Marcar Como Completado Button') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div/div/div[2]/div/div/div[2]/div[2]/div/form/input[4]'
    find(:xpath, xpath).click
  end

  Then('I should see {string} label on the desrciption page of the course') do |com|
    page.should have_content(com)
end

When('I click on Curso') do
    xpath = '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[4]/div/div[2]/h2/a'
    find(:xpath, xpath).click
end

When('I go to the courses subpage') do
    xpath = '/html/body/div[1]/div/div/div/div/main/article/div/div/div[2]/nav/ul/li[5]/a'
    find(:xpath, xpath).click
end

Then('I should see my bought courses like {string} and {string}') do |curso1, curso2|
    page.should have_content(curso1)
    page.should have_content(curso2)
end