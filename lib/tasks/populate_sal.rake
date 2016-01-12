namespace :populate_sal do
  desc "Populate Salesmen"
  task salesmen: :environment do
  	Salesman.populate(8) do |sale|
  		sale.f_name = Faker::Name.first_name
  		sale.l_name = Faker::Name.last_name
  		sale.email = Faker::Internet.email
  		sale.dealership_id = Faker::Number.between(1, 5)
  	end
  	puts "made 8 new salesmen for multiple dealerships. Salesmen count is at: #{Salesman.count}"
  end

end
