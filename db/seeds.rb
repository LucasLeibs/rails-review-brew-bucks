Brew.destroy_all
Customer.destroy_all
BrewCustomer.destroy_all


5.times do
    Brew.create(
      blend_name: Faker::Coffee.blend_name,
      origin: Faker::Coffee.origin,
      notes: Faker::Coffee.notes,
      strength: rand(1..5)
    )
end

10.times do
    Customer.create(
        name: Faker::FunnyName.name_with_initial
    )
end

10.times do 
    BrewCustomer.create(brew: Brew.all.sample, customer: Customer.all.sample)
end
