!# /usr/bin/env ruby

require_relative 'bike'
pannier = Cargo.new
bike = Bike.new(1, :pink, 99.99, pannier)
pannier.add(:apples)
pannier.add(:water)
pannier.add_(:repair_kit)

puts "Space for #{pannier.remaining_capacity} items left."

rental = Rental.new(bike)
