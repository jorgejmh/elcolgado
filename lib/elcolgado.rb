class ElColgado
	attr_reader :palabraOculta
	attr_reader :palabraOcultada
	
	def initialize
		@list	= []
		#@palabras = ["Hola","Adios","Scrum","Agile","Desarrollador"]		
		@palabraOculta = "Hola"
		@palabraOcultada = ocultarPalabra(@palabraOculta)
	end

	def muestraCaracteresUsados letra
		if(!@list.include? (letra) )
			@list.push letra
		end
		return "Caracteres usados: #{@list.join(",")}"
	end

	def ocultarPalabra(palabra)
		palabraOcultada = ""
		palabra.split('').each do |variable|
			palabraOcultada += "_ "
		end
	return palabraOcultada[0,palabraOcultada.size() - 1]
	end
end