class SW_api
  include HTTParty
  base_uri $base_uri
  
  def get_people(endpoint)
    self.class.get(endpoint)
  end

end