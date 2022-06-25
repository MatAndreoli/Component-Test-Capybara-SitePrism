Dado('que esteja na tela de busca') do
    visit('/')
    @google_search_page = GoogleSearchPage.new
    @google_search_page.open_page?
end

Quando('fazer busca por: {string}')  do |searchText|
    @google_search_page.search(searchText)
end

E('clicar no botão pesquisa Google') do
    @google_search_page.send
end

Então('devo visualizar um link com o titulo {string}') do |searchText|
    assert_text @google_search_page, searchText
end

E('clicar no link com o titulo {string}') do |searchText|
    @google_search_page.click_first_h3_title(searchText)
end
