require './lib/elcolgado.rb'

describe ElColgado do
	it "debe de mostrar ____" do
		ec = ElColgado.new
		resultado = ec.ocultarPalabra("Hola")
		expect(resultado).to eq "____"
	end

	it "debe de mostrar Caracteres usados: A" do
		ec = ElColgado.new
		resultado = ec.muestraCaracteresUsados("A")
		expect(resultado).to eq "Caracteres usados: A"
	end

	it "debe de mostrar nada" do
		ec = ElColgado.new
		resultado = ec.adivinaPalabra 'A'
		expect(resultado).to eq ""
	end

	it "debe de mostrar Perdiste" do
		ec = ElColgado.new
		resultado = ec.adivinaPalabra 'Z'
		resultado = ec.adivinaPalabra 'B'
		resultado = ec.adivinaPalabra 'X'
		resultado = ec.adivinaPalabra 'C'
		resultado = ec.adivinaPalabra 'F'
		resultado = ec.adivinaPalabra 'G'
		resultado = ec.adivinaPalabra 'J'
		expect(resultado).to eq "Perdiste"
	end

	it "debe de mostrar Ganaste!!!!" do
		ec = ElColgado.new
		resultado = ec.adivinaPalabra 'H'
		resultado = ec.adivinaPalabra 'O'
		resultado = ec.adivinaPalabra 'L'
		resultado = ec.adivinaPalabra 'A'
		expect(resultado).to eq "Ganaste!!!!"
	end
end