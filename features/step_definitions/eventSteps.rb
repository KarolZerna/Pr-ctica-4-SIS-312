Given('I click on the 'Eventos' section that is on the upper left corner of the page') do
    xpath = '//*[@id="wp-submit"]'
    find(:xpath, xpath).click
end
  
Given('I see the {string} page') do |page|
    page.should have_content(page)
end
  
Given('I click on “Eventos Anteriores”') do
    xpath = '//*[@id="wp-submit"]'
    find(:xpath, xpath).click
end