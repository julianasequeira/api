Dado("que faca uma requisicao http {string} para {string}") do |method, endpoint|
  pizza_api = Pizza_api.new
  @response = pizza_api.get_login(endpoint)
  puts @response
end

Então("o status deve ser {int}") do |status_code|
  expect(@response.code).to eq 200
end

E("deve retornar a autenticacao como verdadeira") do
  expect(@response["authenticated"]).to have_content 'true'
  expect(@response["token"]).to have_content '{(token)}'
end
