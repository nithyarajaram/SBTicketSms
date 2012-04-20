require 'sinatra'
require 'json'

post '/' do
      
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      puts payload.inspect
      body ''
      
end

post '/' do
  "great time"
end


get '/' do
  "test"
end


