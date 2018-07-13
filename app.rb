require 'sinatra'
require './config'
require './lib/elcolgado.rb'

get '/' do
	session['colg'] = ElColgado.new()
	session['msg'] = ""
	session['intentos'] = 0
	session['palabraoculta'] = session['colg'].palabraOcultada.join()
	#session['colg'].ocultarPalabra(session['colg'].palabraOculta)
	erb(:capturaletra) 	
 end	

post '/' do
	#session['palabraoculta'] = session['colg'].ocultarPalabra("Hola")
	session['palabraoculta'] = session['colg'].palabraOcultada.join()
	session['msg'] = session['colg'].muestraCaracteresUsados ( params['letra'] )
	session['usados'] = session['colg'].adivinaPalabra ( params['letra'] )
	session['intentos'] = session['colg'].intentos
  erb(:capturaletra)
end
