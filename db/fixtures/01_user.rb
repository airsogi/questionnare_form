# user_count = 2_000_000
user_count = 20_000

users = (1..user_count).map do |i|
  {
    name: Gimei.unique.name.kanji,
    address: Gimei.unique.address.to_s,
    email: Faker::Internet.email,
    zip_code: Faker::Address.postcode,
    phone: Faker::PhoneNumber.cell_phone,
    created_at: Time.current,
    updated_at: Time.current
  }
end

users.each_slice(user_count/100) do |block|
  p User.insert_all block
end
