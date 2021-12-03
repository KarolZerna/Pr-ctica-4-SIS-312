When('I click on Apuntame button') do
    xpath = '//*[@id="btn-join"]'
    find(:xpath, xpath).click
  end

  Given('I click on the shopping cart') do
    xpath = '//*[@id="header-aside"]/div/div[2]/a/span/span'
    find(:xpath, xpath).click
  end

  Then('I should see the cart with a tag that increases in {int}') do |int|
    number = '1'
    find(:xpath, '//*[@id="header-aside"]/div/div[2]/a/span/span', :text => number)
    end

      Then('I click on the title Como hacer milkshakes on the list') do
        xpath = '//*[@id="header-aside"]/div/div[2]/section/div/ul/li[1]/a[2]'
        find(:xpath, xpath).click
      end
      
      Then('I should see the page of the course selected with {string} title') do |title|
        page.should have_content(title)
      end
      
      Then('information about {string} price') do |pris|
        page.should have_content(pris)
      end
      
      Then('information about {string} on description') do |excr|
        page.should have_content(excr)
      end
      Then('I can see the subtotal amount to pay for all the courses in the list') do
        number = 'Subtotal: 1.00Bs.'
        find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/p[1]', :text => number)
      end

      Then('I should see a the {string} course that I have ordered already') do |curs|
        find(:xpath, '//*[@id="header-aside"]/div/div[2]/section/div/ul/li/a[2]', :text => curs)
      end
      
      When('I click on the ‘x’ icon that is next to the course previously selected') do
        xpath = '//*[@id="header-aside"]/div/div[2]/section/div/ul/li/a[1]'
        find(:xpath, xpath).click
      end

      Then('I should’n see the course and the number of the label increases {int}') do |int|
        number = '1'
       find(:xpath, '//*[@id="header-aside"]/div/div[2]/a/span/span', :text => number)
        end

        Then('I click on the cart icon') do
            xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a'
            find(:xpath, xpath).click
          end
          
          Then('I clcik on Iniciar sesion') do
           xpath = '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[1]'
           find(:xpath, xpath).click
        end