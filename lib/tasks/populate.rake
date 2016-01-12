namespace :populate do
  desc "Populate Dealerships"
  task dealerships: :environment do
  	Dealership.populate(5) do |deal|
  		deal.name = Faker::Company.name
  	end
  puts "Made 5 new Dealerships. Dealership count is #{Dealership.count}"
	end
end
