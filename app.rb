require 'sinatra'

get '/' do
  "Hello World"
end

post '/' do
 json = JSON.parse(request.body.read.to_s)
 payload = json['payload']
 print payload

end


