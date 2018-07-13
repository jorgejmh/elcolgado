require 'sinatra'
require './config'
require './lib/elColgado2.rb'
require './lib/elcolgado.rb'

get '/' do
	el = ElColgado.new
	session['palabraoculta'] = el.ocultarPalabra("Hola")
	erb(:index) 	
 end	

get '/captura' do
  erb(:capturaletra)
end

post '/captura' do
	session['colg'] = ElColgado2.new()
	session['msg'] = session['colg'].muestraCaracteresUsados
  	erb(:capturaletra)
end
