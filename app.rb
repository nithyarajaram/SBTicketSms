require 'sinatra'
require 'json'
require 'rubygems'
require 'net/http'
require 'uri'

post '/' do
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      if payload['action_type'] == 'ticket_created'
         url = URI("http://bulksms.vsms.net:5567/eapi/submission/send_sms/2/2.0")
         msg = URI::encode("[#{payload['company']['name']}:New Ticket] #{payload['ticket']['subject']}")
         params = {'username' => 'supporee', 'password' => 'supbee', 'message' => msg, 'msisdn' => '+841268057258'}
         page = Net::HTTP.post_form(url,params)
      end
end
