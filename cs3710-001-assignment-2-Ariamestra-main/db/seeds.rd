Person.destroy_all
20.times {
    Person.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        address: Faker::Address.full_address,
        phone: Faker::PhoneNumber.cell_phone,
        library_card: rand(100000000..999999999)
    )
}
