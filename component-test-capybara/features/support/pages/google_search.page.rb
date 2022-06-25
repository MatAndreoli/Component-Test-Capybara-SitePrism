class GoogleSearchPage 
    include Capybara::DSL

    def open_page?
        find('input[name=q]', visible: true)
        find('input[name=btnK]', visible: true)
    end

    def search(text)
        find('input[name="q"]').set(text)
    end

    def send()
        find('input[name="btnK"]').click()
    end

    def find_first_h3_title()
        all('h3[class="LC20lb MBeuO DKV0Md"]')[0].text
    end

    def click_first_h3_title(text)
        click_on(text)
        # all('h3[class="LC20lb MBeuO DKV0Md"]')[0].click() 
    end
end
