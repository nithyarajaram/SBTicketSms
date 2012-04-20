require 'sinatra'
require 'json'

post '/' do
      json = JSON.parse(request.body.read.to_s)
      print jason
end



