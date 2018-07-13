require 'sinatra'
require './config'
require './lib/elColgado2.rb'

get '/captura' do
	session['colg'] = ElColgado2.new()
  erb(:capturaletra)
end

post '/captura' do
	session['msg'] = session['colg'].muestraCaracteresUsados ( params['letra'] )
  erb(:capturaletra)
end