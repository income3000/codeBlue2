# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Doorkeeper::Application.count.zero? 
	Doorkeeper::Application.create!(name: 'web client ',redirect_uri: '', scopes: '')
	Doorkeeper::Application.create!(name: 'ios client ',redirect_uri: '', scopes: '')
	Doorkeeper::Application.create!(name: 'Andriod client ',redirect_uri: '', scopes: '')
	Doorkeeper::Application.create!(name: 'React ',redirect_uri: '', scopes: '')
end 



User.first_or_create(email: 'income3000@gmail.com',
					password: 'password',
					password_confirmation: 'password',
					role: User.roles[:admin])