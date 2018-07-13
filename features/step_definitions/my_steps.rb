Given(/^que abri el juego$/) do
	visit '/captura'
end

Given(/^ingreso la letra "([^"]*)"$/) do |letra|
	fill_in("letra", :with => letra)
	click_button("Guardar")
end


Then(/^debo ver "([^"]*)"$/) do |letra|
	expect(page.body).to match /#{letra}/m
end

Given(/^que abri el indice$/) do
  visit '/'
end

Then(/^debo ver oculto "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

