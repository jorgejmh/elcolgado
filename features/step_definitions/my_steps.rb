Given(/^que abri el juego$/) do
  visit '/' #abre el home
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end



