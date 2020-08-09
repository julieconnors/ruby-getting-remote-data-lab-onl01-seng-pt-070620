require 'net/http'

class GetRequester
  attr_accessor :url
  
  def initialize(url)
    @url = url
    
  end
  
  def get_response_body

  end
  
  def parse_json
  
  end
  
  def program_school
# we use the JSON library to parse the API response into nicely formatted JSON
  programs = JSON.parse(self.get_programs)
  programs.collect do |program|
    program["agency"]  
  end
end
  
end