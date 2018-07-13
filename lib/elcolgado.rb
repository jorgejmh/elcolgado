class ElColgado
	attr_reader :palabraOculta
	attr_reader :palabraOcultada
	attr_reader :intentos
	
	def initialize
		@list	= []
		@intentos  = 7
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
		end
		return "Caracteres usados: #{@list.join(",")}"
	end

	def adivinaPalabra letra
			found = false
			@palabraOculta.split('').each do |caracter|
				if caracter.upcase == letra.upcase
					posicion=@palabraOculta.index(caracter)
					@palabraOcultada[posicion] = letra
					found = true
				end
			end
			
			if !found
				@intentos -= 1
			end

			if @palabraOculta == @palabraOcultada.join()
				return "Ganaste!!!!"
			end

			if @intentos <= 0
				return "Perdiste"
			end



		return @palabraOcultada.join()
	end

	def ocultarPalabra(palabra)
		palabraOcultada = ""
		palabra.split('').each do |variable|
			palabraOcultada += "_"
		end
	return palabraOcultada[0,palabraOcultada.size()]
	end
end