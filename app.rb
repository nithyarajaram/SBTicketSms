require 'sinatra'
require 'json'

post '/profile' do
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      puts payload.inspect
      
end

post '/' do
  "great time"
end


get '/' do
  "test"
end


