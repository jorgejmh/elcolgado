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

	it "debe de mostrar ___A" do
		ec = ElColgado.new
		resultado = ec.adivinaPalabra 'A'
		expect(resultado).to eq "___A"
	end
end