require 'sinatra'
require 'json'

post '/' do
 profile = JSON.parse(params[:payload])
 "#{profile.inspect}"
end

get '/' do
  "Hello World"
end

