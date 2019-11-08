# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
    user = User.create(
        email: "Babakoto@yopmail.com",
        description: Faker::Movies::VForVendetta.quote,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
        )

event = Event.create(
    start_date: "2020-#{rand(1..12)}-#{rand(1..31)}",
    duration: 600,
    title: "Fanakotolona",
    description: Faker::Movies::BackToTheFuture.quote,
    price: 800,
    location: Faker::Address.city,
    admin: User.first
)

=begin
for index in 2..5 do
    attendance = Attendance.create(
        stripe_customer_id: Faker::Bank.iban,
        event_id: 1,
        customer_id: 12,
        admin_id: 1
    )
end
=end