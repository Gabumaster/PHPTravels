class PHPTravels < SitePrism::Page
    set_url "https://www.phptravels.net/"

    # --------------------elements---------------------------------#
    element :destination, :xpath, '(//*[@*="text"])[1]'
    element :selhotel, :xpath, '(//*[@*="select2-result-label"])[2]'
    element :search, :xpath, '(//*[@*="submit"])[1]'
    element :selectroom, :xpath, '(//*[@*="custom-control custom-checkbox"])[1]'
    element :selroom, 'select[name="roomscount[17]"]'
    element :numroom, :xpath, '(//*[@*="1"])[4]'
    element :oneroom, :xpath, '(//*[@*="javascript:void(0);"])[14]'
    element :tripleroom, :xpath, '(//*[@*="javascript:void(0);"])[15]'
    element :familyroom, :xpath, '(//*[@*="javascript:void(0);"])[16]'
    element :booknow, :xpath, '(//*[@*="submit"])[2]'
    element :firstname, '*[name="firstname"]'
    element :lastname, '*[name="lastname"]'
    element :email, '*[name="email"]'
    element :mailconf, '*[name="confirmemail"]'
    element :phone, '*[name="phone"]'
    element :address, '*[name="address"]' #Text
    element :country, '*[class="chosen-single"]' #Select
    element :confirmbooking, '*[name="guest"]' #click
    # --------------------------------------------------------------#

    
  def initialize
    # Faker::Config.locale = 'pt-BR'
    @cpf = Faker::CPF.numeric
    @nome = Faker::Games::Zelda.location
    @telnumero = Faker::PhoneNumber.phone_number
    @datanasc = Faker::Date.birthday(min_age: 35, max_age: 50).strftime("%d/%m/%Y")
    @telefone = Faker::PhoneNumber.phone_number
    @celular = Faker::PhoneNumber.cell_phone
    @email = Faker::Internet.free_email
    @confemail = @email
    @cep = Faker::Address.zip_code
    @logradouro = Faker::Address.street_name
    @numlgrd = Faker::Address.building_number
    @complemento = Faker::Address.secondary_address
    @bairro = Faker::Address.community
    @pais = Faker::Address.country
    @senha = Faker::Number.number(digits: 6)

  end

  def select_hotel(hotel)
    destination.set(hotel)
    selhotel.click
  end

  def confbooking
    lastname.set @nome
    email.set @email
    mailconf.set @confemail
    phone.set @telefone
    address.set @logradouro
    country.set @pais
  end

end


