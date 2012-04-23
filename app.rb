require 'sinatra'
require 'json'
require 'rubygems'
require 'net/http'
require 'uri'
require 'cgi'

post '/' do
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      puts payload.inspect
      if payload['action_type'] == 'ticket_created' || payload['action_type'] == 'incoming_reply_created'
         url = URI("http://bulksms.vsms.net:5567/eapi/submission/send_sms/2/2.0")
         #msg = CGI::escape("[#{payload['company']['name']}:] #{payload['ticket']['subject']}")
         msg = CGI::escape("There is a new ticket")
         puts msg
         #params = {'username' => ENV["BULKSMS_USERNAME"], 'password' => ENV["BULKSMS_PASSWORD"], 'message' => msg, 'msisdn' => ENV["BULKSMS_RECIPIENT1"]}
         #page = Net::HTTP.post_form(url,params)
         #puts page.body
      end
end
