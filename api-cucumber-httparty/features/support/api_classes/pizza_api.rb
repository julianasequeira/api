class Pizza_api
  include HTTParty
  base_uri $base_uri
  
  def get_login(endpoint)
    self.class.get(endpoint)
  end

end