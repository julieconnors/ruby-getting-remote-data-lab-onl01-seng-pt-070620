require 'net/http'
require 'open-uri'
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
    binding.pry
    j_request = JSON.parse(self.get_response_body)
    j_request.collect do |requested|
      j_request[requested]
    end
  end
  
end