require './lib/elcolgado.rb'

describe ElColgado do
	it "debe de mostrar _ _ _" do
		ec = ElColgado.new
		resultado = ec.ocultarPalabra("Ana")
		expect(resultado).to eq "_ _ _"
	end
end