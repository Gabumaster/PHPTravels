Dado("que eu esteja no site PHPTravels") do
  pending # Write code here that turns the phrase above into concrete actions end

Dado("faço a busca do hotel desejado") do
  pending # Write code here that turns the phrase above into concrete actions end

Quando("seleciono para verificar a disponibilidade de quartos") do
  pending # Write code here that turns the phrase above into concrete actions end

Quando("seleciono a opção de {string} quartos {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions end

Quando("insiro os {string} cadastrais") do |string|
  pending # Write code here that turns the phrase above into concrete actions end

Entao("finalizo minha reserva com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions end

Quando("seleciono a opção de {string} triple rooms {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions end
  
Quando("seleciono a opção de {string} family rooms {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions end

# Dado("que eu esteja no site PHPTravels") do
#   @travel = PHPTravels.new
#   @travel.load
# end

# Dado("faço a busca do hotel desejado") do
#   @travel.select_hotel("Grand Plaza Apartments")
# end

# Quando("seleciono para verificar a disponibilidade de quartos") do
#   @travel.search.click
# end

# Quando("seleciono a opção de {string} quartos {string}") do |tipos, disponiveis|
#   @travel.selectroom.click
#   expect(@travel.oneroom.text).to eq(tipos)
#   @travel.selroom.click
#   expect(@travel.numroom.text).to eq(disponiveis)  
# end

# Quando("insiro os {string} cadastrais") do |dados|
#   @travel.booknow.click
#   @travel.firstname.set(dados)
# end

# Entao("finalizo minha reserva com sucesso") do
#   @travel.confbooking
#   @travel.confirmbooking.click
#   binding.pry
# end

