require 'sinatra'
require './config'
require './lib/elcolgado.rb'

get '/' do
	session['colg'] = ElColgado.new()
	session['msg'] = ""
	session['palabraoculta'] = session['colg'].palabraOcultada.join()
	session['intentos'] = session['colg'].intentos
	session['usados'] = ""
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
