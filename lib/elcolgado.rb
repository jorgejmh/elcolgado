class ElColgado
	
	def ocultarPalabra(palabra)
	palabraOculta = ""
		palabra.split('').each do |variable|
			palabraOculta += "_ "
		end
	return palabraOculta[0,palabraOculta.size() - 1]
	end
end