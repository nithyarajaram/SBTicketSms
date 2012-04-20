require 'sinatra'
require 'json'

post '/' do
 profile = JSON.parse(request.body.read.to_s)
 "#{profile.inspect}"
end

get '/' do
  "Hello World"
end

