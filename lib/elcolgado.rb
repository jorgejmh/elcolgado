class ElColgado

	def initialize
		@list	= []
		@intentos  = 0
		@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]
		@palabraOculta = "Hola"
	end

	def muestraCaracteresUsados letra

		if !letra.nil? and letra.to_i.to_s == "0"
			if(!@list.include? (letra))
				@list.push letra
			end
			@intentos += 1
		end
		return "Caracteres usados: #{@list.join(",")}"
	end

	def adivinaPalabra letra
		if @palabraOculta.include?(letra)
			posicion = @palabraOculta.index(letra)
			@palabraOculta.each do |caracter|
				posicion=@palabraOculta.index(caracter)
				@palabraOcultada[posicion] = letra
			end
		
		end
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