sp_districts = [
  'Itaim Bibi',
  'Jardim Paulista',
  'Consolação',
  'Moema',
  'Brooklin',
  'Vila Olimpia',
  'Vila Nova Conceição'
]

for i in 1..50
  price_rand = rand(8000...15000)
  @property =
    Property.create(
      district: sp_districts[rand(1...sp_districts.size)],
      address: Faker::Address.street_address,
      bedroom: rand(1..3),
      bathroom: rand(1..2),
      price: price_rand,
      discount: if rand(0..1) == 1 then rand(500...1500) else 0 end
    )
  for j in 1..3
    @property.photos.create(path: "640x480/#{(i - 1) * 3 + j}.jpg")
  end
end
