require 'sinatra'
require 'json'

post '/' do
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      puts payload.inspect
      
end


get '/' do
  "test"
end


