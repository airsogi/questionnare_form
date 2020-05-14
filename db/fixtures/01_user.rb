user_count = 2_000
Faker::Config.locale = 'ja'

user_count.times do
  User.seed(
    name: Gimei.unique.name.kanji,
    address: Gimei.unique.address.to_s,
    email: Faker::Internet.email,
    zip_code: Faker::Address.postcode,
    phone: Faker::PhoneNumber.cell_phone
  )
end
