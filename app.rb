require 'sinatra'

post '/' do
 json = JSON.parse(request.body.read.to_s)
 payload = json['payload']
 print payload

end


