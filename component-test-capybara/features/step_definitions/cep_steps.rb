Dado('que eu acesse a api de ceps') do
    @api = CEPApi.new
end

Quando('pesquiso o cep {string}') do |cep|
    @response = @api.get_cep(cep)
end

Então('são retonados os dados do cep') do
    expect(@response.body).not_to be_empty 
end

E('a localidade e estado são, respectivamente, {string} e {string}') do |local, estado|
    expect(@response['localidade']).to eql(local)
    expect(@response['uf']).to eql(estado)
end

E('o status code é {int}') do |code|
    expect(@response.code).to eql(code)
end

E('a message é {string}') do |message|
    expect(@response.message).to eql(message)
end
