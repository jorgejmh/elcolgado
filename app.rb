require 'sinatra'
require './config'
require './lib/elcolgado.rb'

get '/' do
	el = ElColgado.new
	session['palabraoculta'] = el.ocultarPalabra("Hola")
	erb(:index) 	
 end	

get '/captura' do
	session['colg'] = ElColgado.new()
  erb(:capturaletra)
end

post '/captura' do
	session['msg'] = session['colg'].muestraCaracteresUsados ( params['letra'] )
  erb(:capturaletra)
end
##=======
#	session['colg'] = ElColgado2.new()
#	session['msg'] = session['colg'].muestraCaracteresUsados
#  	erb(:capturaletra)
#end
