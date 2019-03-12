require 'http'
require 'json'

class WelcomeController < ApplicationController
  def index
    @response = HTTP.get('http://pool2.cryptopowered.club/aba-mn.txt')
    # @result = JSON.parse(@response)
    
    json = JSON.parse(@response)
    @mn_total = json['total'] # prints "bar"
    @mn_stable = json['stable'] # prints "bar"
    @mn_enabled = json['enabled'] # prints "bar"
  end
end
