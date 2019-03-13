require 'http'
require 'json'
require 'mathn'

class WelcomeController < ApplicationController
  def index
    @response = HTTP.get('http://pool2.cryptopowered.club/aba-mn.txt')
    
    json = JSON.parse(@response)
    @mn_total = json['total'].to_f 
    @mn_stable = json['stable']
    @mn_enabled = json['enabled']


    @mn_roi = ((5*720*365 / @mn_total) / (1000*100))

    # @mn_2 = eval(@mn_1.to_i / @mn_total)

   
# $revenue = ((5*720*365)/$mncount)/1000*100;

  end
end
