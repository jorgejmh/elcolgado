require 'sinatra'
require './config'
require './lib/elcolgado.rb'

get '/captura' do
	session['colg'] = ElColgado.new()
	session['palabraoculta'] = session['colg'].ocultarPalabra("Hola")
	erb(:capturaletra) 	
 end	

post '/captura' do
	session['palabraoculta'] = session['colg'].ocultarPalabra("Hola")
	session['msg'] = session['colg'].muestraCaracteresUsados ( params['letra'] )
  erb(:capturaletra)
end
