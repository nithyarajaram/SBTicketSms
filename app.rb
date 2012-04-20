require 'sinatra'
require 'json'

post '/' do
      @profile = JSON.parse(request.body.read.to_s)
      
end


get '/' do
  puts @profile
end


