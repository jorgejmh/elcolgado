require 'sinatra'
require './config'

get '/captura' do
  erb(:capturaletra)
end

post '/captura' do
  "Caracteres usados: A"
  erb(:capturaletra)
end