Dado("que eu esteja no site PHPTravels") do
  @travel = PHPTravels.new
  @travel.load
end

Dado("faço a busca do hotel desejado") do
  @travel.select_hotel("Grand Plaza Apartments")
end

Quando("seleciono para verificar a disponibilidade de quartos") do
  @travel.search.click
end

Quando("seleciono a opção de {string} quartos {string}") do |tipos, disponiveis|
  @travel.selectroomone.click
  expect(@travel.oneroom.text).to eq(tipos)
  @travel.selroomone.select(disponiveis)
end

Quando("insiro os {string} cadastrais") do |dados|
  @travel.booknow.click
  @travel.firstname.set(dados)
end

Entao("finalizo minha reserva com sucesso") do
  @travel.confbooking
  @travel.confirmbooking.click
end

Quando("seleciono a opção de {string} triple rooms {string}") do |tipos, disponiveis|
  @travel.selectroomtriple.click
  expect(@travel.tripleroom.text).to eq(tipos)
  @travel.selroomtriple.select(disponiveis)
end

Quando("seleciono a opção de {string} family rooms {string}") do |tipos, disponiveis|
  @travel.selectroomfamily.click
  expect(@travel.familyroom.text).to eq(tipos)
  @travel.selroomfamily.select(disponiveis)
end

