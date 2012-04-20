require 'sinatra'
require 'json'

post '/' do
      json = JSON.parse(request.body.read.to_s)
      payload = json['payload']
      "I got some jason #{payload.inspect}"
end

get '/' do
  "Hello World"
end

