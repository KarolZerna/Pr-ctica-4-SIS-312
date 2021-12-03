Then('I should see the {string} label') do |label|
    page.should have_content(label)
end

Then('I’m able to see the description of the course like {string}') do |desc|
    page.should have_content(desc)
end