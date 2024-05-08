require "faker"

User.destroy_all
Event.destroy_all
Participation.destroy_all

# Create Users
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph(sentence_count:2),
    email: "user#{rand(1..1000)}@yopmail.com"
  )
end

puts "User seeded"

# Create Events
10.times do
  event = Event.create(
    title: Faker::Lorem.word,
    description: Faker::Lorem.paragraph(sentence_count:2),
    price: rand(1..1000),
    location: Faker::Address.city,
    start_date: Faker::Date.forward(days: 50),
    duration: (rand(1..100)) * 5,
    user_id: rand(1..10)
  )
end

puts "Event seeded"