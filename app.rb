require 'sinatra'
require './config'

get '/' do
	"hola".split("").each do |c|
 		puts "_ "
 	end 	
end