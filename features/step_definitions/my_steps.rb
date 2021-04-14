
When("inicio de la aplicación") do
    visit '/fijarNumero/2153'
end

Then("muestra {string}") do |titulo|
    expect(page).to have_css 'h1', text:titulo
end

When("elije el {int}") do |numero|
    fill_in("numero", :with => numero)
    click_button "Validar"
end
  
Then("muestra mensaje {string}") do |respuesta|
    expect(page).to have_css 'div#respuesta', text:respuesta
end
