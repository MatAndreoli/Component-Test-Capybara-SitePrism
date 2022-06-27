Dado('que esteja na tela de busca') do
    @google_search_page = GoogleSearchPage.new
    @google_search_page.load
    @google_search_page.open_page?
end

Quando('fazer busca por {string}')  do |searchText|
    @google_search_page.search_input.set searchText
end


E('clicar no botão pesquisa Google') do
    @google_search_page.search_button.click
end


Então('devo visualizar um texto com {string} na página') do |searchText|
    @google_search_page.all('h3[class="LC20lb MBeuO DKV0Md"]').each { |link| assert_text link.text, searchText }
end

E('devo clicar na 1ª imagem que é um link') do
    @google_search_page.first_img_link.click
end

E('devo ver a logo do site "TudoGostoso - Onde nascem todas as receitas"') do
    @google_search_page.wait_until_logo_tudo_gostoso_visible
end
