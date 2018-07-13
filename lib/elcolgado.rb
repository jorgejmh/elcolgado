class ElColgado

	def initialize
		@list	= []
		@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]
	end

	def muestraCaracteresUsados letra
		if(!@list.include? (letra) )
			@list.push letra
		end
		return "Caracteres usados: #{@list.join(",")}"
	end

	def ocultarPalabra(palabra)
	palabraOculta = ""
		palabra.split('').each do |variable|
			palabraOculta += "_ "
		end
	return palabraOculta[0,palabraOculta.size() - 1]
	end
end