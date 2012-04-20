require 'sinatra'
require 'json'

get '/' do
  print @payload
end

post '/' do
 json = JSON.parse(request.body.read.to_s)
 @payload = json['payload']
end


