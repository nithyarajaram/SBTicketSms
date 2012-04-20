require 'sinatra'
require 'json'

get '/' do
  "Hello World"
end

post '/' do
 json = JSON.parse(request.body.read.to_s)
 payload = json['payload']
 print payload

end


