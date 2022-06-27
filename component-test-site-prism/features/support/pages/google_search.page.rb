class GoogleSearchPage < SitePrism::Page
    set_url "/"
    element :search_input, 'input[name="q"]'
    element :search_button, 'input[name="btnK"]'
    element :first_img_link, 'img[id=rimg_1]'
    element :logo_tudo_gostoso, 'img[alt="TudoGostoso - Onde nascem todas as receitas"]'

    def open_page?
        wait_until_search_input_visible(wait: 15)
        wait_until_search_button_visible(wait: 15)
    end
end
