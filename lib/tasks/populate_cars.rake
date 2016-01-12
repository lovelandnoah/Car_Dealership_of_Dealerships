namespace :populate_cars do
  desc "Populate Cars"
  task cars: :environment do
  	Car.populate(200) do |car|
  		car.make = ["Ford", "Toyota", "Chevrolet", "MINI", "Ferrari", "Lamborghini"].sample
  		car.model = ["Cooper", "F-150", "Aventador", "Camaro", "Highlander", "458 Italia"].sample
  		car.year = Faker::Number.between(1982, 2016)
  		car.color = Faker::Commerce.color
  		car.salesman_id = Faker::Number.between(1, 16)
  	end
  	puts "200 cars new made. Car count is now: #{Car.count}"
  end

end
