# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Helper method to attach images
def attach_image(customer, filename)
  customer.image.attach(
    io: File.open(Rails.root.join('app/assets/images', filename)),
    filename: filename
  )
end

customer1 = Customer.create!(
  full_name: "Rush Hour 2 on DVD",
  phone_number: "(555) 987-6543",
  email_address: "enquiry@jackiechan.com",
  notes: "too many quotes go buy the dvd"
)
attach_image(customer1, 'rushhour.png')

customer2 = Customer.create!(
  full_name: "Bruce Wizard",
  phone_number: "555-0001",
  email_address: "N/A",
  notes: "Eagle eyes is going to buy out the wizard school I need you to find his tax return so I know where he is"
)
attach_image(customer2, 'Brucewizard.png')

customer3 = Customer.create!(
  full_name: "Johnny Vegas",
  phone_number: "0151 7094014",
  email_address: "N/A",
  notes: "\"I've been hurt. And I want to hurt others\""
)
attach_image(customer3, 'johnnyvegas.jpg')

customer4 = Customer.create!(
  full_name: "Kermit the Frog",
  phone_number: "555-1108",
  email_address: "kermitthfrg@gmail.com",
  notes: "Hi Ho! Kermit the Frog here!"
)
attach_image(customer4, 'kermit.png')

customer5 = Customer.create!(
  full_name: "Big Boss",
  phone_number: "369-244-2677",
  email_address: "LaLiLuLeLo@outterhaven.net",
  notes: "The Man Who Sold the World"
)
attach_image(customer5, 'biggboss.jpg')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?