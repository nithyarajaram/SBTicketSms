require 'sinatra'
require 'json'
require 'rubygems'
require 'net/http'
require 'uri'

post '/' do
      
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      puts payload.inspect
            
url = URI("http://bulksms.vsms.net:5567/eapi/submission/send_sms/2/2.0")
msg = URI::encode("This is a new ticket")
params = {'username' => 'supportbee', 'password' => 'supbee', 'message' => msg, 'msisdn' => '+841268057258'}
page = Net::HTTP.post_form(url,params)
puts page.body

end
