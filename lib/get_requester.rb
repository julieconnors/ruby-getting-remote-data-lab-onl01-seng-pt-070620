require 'net/http'

class GetRequester
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    x = JSON.parse(self.get_response_body)
    x.collect do |x1|
      x[x1].to_i
    end
  end
  
end