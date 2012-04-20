require 'sinatra'
require 'json'

post '/' do
 @profile = JSON.parse(request.body.read.to_s)
 "profile"
end

get '/' do
  "Hello World"
  "#{@profile}"
end

