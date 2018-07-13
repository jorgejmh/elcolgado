require 'sinatra'
require './config'
require './lib/elColgado2.rb'

<<<<<<< HEAD
get '/' do
	"hola".split("").each do |c|
 		puts "_ "
 	end 	
=======
get '/captura' do
  erb(:capturaletra)
end

post '/captura' do
	session['colg'] = ElColgado2.new()
	session['msg'] = session['colg'].muestraCaracteresUsados
  erb(:capturaletra)
>>>>>>> origin/master
end