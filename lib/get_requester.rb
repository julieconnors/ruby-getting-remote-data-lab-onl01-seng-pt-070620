require 'net/http'
require 'pry'
require 'json'

class GetRequester
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def self
    
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    staff = JSON.parse(self.get_response_body)
    staff
    end
  end
  
end