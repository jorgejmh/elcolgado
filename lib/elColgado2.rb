class ElColgado2
	

	def initialize
		@list	= []
	end

	def muestraCaracteresUsados letra
		if(!@list.include? (letra) )
			@list.push letra
		end
		return "Caracteres usados: #{@list.join(",")}"
	end

end