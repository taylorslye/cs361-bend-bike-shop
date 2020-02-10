# Bike

class Bike


  STANDARD_WEIGHT = 200 # lbs
  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price,cargo, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = cargo
  end

  def rent!
    self.rented = true
  end

end


class Cargo
  MAX_CARGO_ITEMS = 10
  attr_accessor :contents
  def initialize
    @contents = []
  end

  def add(item)
    self.contents << item
  end

  def remove(item)
    self.contents.remove(item)
  end

  def get_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.contents.size
end

class Rental
  def initialize(bike)
    @bike = bike
  end

end
