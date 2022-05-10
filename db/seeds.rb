# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

firm = Firm.create name: 'Slippen, Fall & Sioux'

user = User.create first_name: 'Some',
                   last_name: 'User',
                   firm: firm,
                   email: 'person@email.com',
                   password: 'password',
                   password_confirmation: 'password'

(1..10).each do |i|
  Attorney.create(first_name: Faker::Name.first_name,
                  middle_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  suffix: Faker::Name.suffix,
                  firm: firm)
end

p 'Done'
p "Log in with:\n"
p 'Email: person@email.com'
p 'Password: password'
