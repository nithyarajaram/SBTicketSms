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
      company_name = payload['company']['name']
      ticket_subject = payload['ticket']['subject']
     
      if payload['action_type'] == 'ticket_created'
        msg = "(#{company_name}: New Ticket) #{ticket_subject}"
      elsif  payload['action_type'] == 'incoming_reply_created'
        msg = "(#{company_name}: Reply) #{ticket_subject}"
      end
         
      url = URI("http://bulksms.vsms.net:5567/eapi/submission/send_sms/2/2.0")
      params = {'username' => ENV["BULKSMS_USERNAME"], 'password' => ENV["BULKSMS_PASSWORD"], 'message' => msg, 'msisdn' => ENV["BULKSMS_RECIPIENT1"]}
      page = Net::HTTP.post_form(url,params)
      puts page.body
end


