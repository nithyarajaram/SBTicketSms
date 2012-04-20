require 'sinatra'
require 'json'

post '/' do
 profile = JSON.parse(request.body.read.to_s)
 puts "profile"
end

get '/' do
  print "Hello World"
end

