Given(/^que abri el juego$/) do
	visit '/captura'
end

Given(/^ingreso la letra "([^"]*)"$/) do |letra|
	fill_in("letra", :with => letra)
	click_button("Guardar")
end

Then(/^debo ver "([^"]*)"$/) do |letra|
 	"Caracteres usados: A"
end

