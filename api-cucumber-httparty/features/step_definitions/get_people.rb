
Given("I make a http {string} request for the endpoint {string}") do |http_method, endpoint|
  sw_api = SW_api.new
  @response = sw_api.get_people(endpoint)
  puts @response
end

Then("The status code should be {int}") do |status_code|
  expect(@response.code).to eq 200
end

And("It should return valid people") do
  expect(@response["name"]).not_to be nil
  expect(@response["homeworld"]).not_to be nil
end
