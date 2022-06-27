require 'httparty'

class CEPApi
    include HTTParty
    base_uri "https://viacep.com.br"
    
  def get_cep(cep)
    self.class.get("/ws/#{cep}/json/")
  end
end
