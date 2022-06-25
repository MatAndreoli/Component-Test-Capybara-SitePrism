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



E('deve visualizar links de receita de {string}') do |searchText|
    @google_search_page.get_first_link_text
    # @google_search_page.all('h3[class="LC20lb MBeuO DKV0Md"]').each { |name| puts name.text }
end
