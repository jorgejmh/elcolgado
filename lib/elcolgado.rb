class ElColgado
	attr_reader :palabraOculta
	attr_reader :palabraOcultada
	
	def initialize
		@list	= []
		@intentos  = 0
		#@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]
		@palabraOculta = "HOLA"
		@palabraOcultaArray = @palabraOculta.split("")
		@palabraOcultada = Array.new(@palabraOcultaArray.size,"_")
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
			@palabraOculta.split('').each do |caracter|
				if caracter.upcase == letra.upcase
					posicion=@palabraOculta.index(caracter)
					@palabraOcultada[posicion] = letra
				end
			end

		return @palabraOcultada.join()
	end 

	def getNumeroIntentos
		return @intentos
	end

	def ocultarPalabra(palabra)
		palabraOcultada = ""
		palabra.split('').each do |variable|
			palabraOcultada += "_"
		end
	return palabraOcultada[0,palabraOcultada.size()]
	end
end