class ElColgado

	def initialize
		@list	= []
		@intentos  = 0
		@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]
	end

	def muestraCaracteresUsados letra

		if !numero.nil? and numero.to_i.to_s.split('').uniq.size == 1
			if(!@list.include? (letra) )
				@list.push letra
			end
			@intentos += 1
		end

		

		return "Caracteres usados: #{@list.join(",")}"
	end

	def getNumeroIntentos
		return @intentos
	end


	def ocultarPalabra(palabra)
	palabraOculta = ""
		palabra.split('').each do |variable|
			palabraOculta += "_ "
		end
	return palabraOculta[0,palabraOculta.size() - 1]
	end
end