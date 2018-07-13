class ElColgado
	attr_reader :palabraOculta
	attr_reader :palabraOcultada
	
	def initialize
		@list	= []
		@intentos  = 0
		#@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]
		@palabraOculta = "Hola"
		@palabraOcultada = ocultarPalabra(@palabraOculta)

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
		palabraOcultada = ""
		palabra.split('').each do |variable|
			palabraOcultada += "_ "
		end
	return palabraOcultada[0,palabraOcultada.size() - 1]
	end
end