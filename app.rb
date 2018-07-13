require 'sinatra'
require './config'
require './lib/elcolgado.rb'

get '/captura' do
	session['colg'] = ElColgado.new()
	session['msg'] = ""
	session['palabraoculta'] = session['colg'].ocultarPalabra(session['colg'].palabraOculta)
	erb(:capturaletra) 	
 end	

post '/captura' do
	session['palabraoculta'] = session['colg'].ocultarPalabra("Hola")
	session['msg'] = session['colg'].muestraCaracteresUsados ( params['letra'] )
  erb(:capturaletra)
end
