class Dealership
  attr_reader :name, :total_value, :details, :average_price_of_car, :address, :inventory, :inventory_count, :has_inventory, :cars_by_make
  def initialize(name, address)
    @name = name 
    @address = address
    @inventory = []
    @inventory_count = 0 
    @has_inventory = false 
    @details = {} 
  end

  def add_car(car)
    @inventory << car 
    @inventory_count += 1 
    @has_inventory = true 
  end

  def has_inventory?
    @has_inventory
  end

  def cars_by_make(car_make)
    @inventory.select {|car| car.make == car_make}
  end 

  def total_value
    @cost = []
    @inventory.each do |car|  
      @cost << car.total_cost 
    end
    @cost.sum
  end
  
  def details
    # Hash["total_value", @total_value, "address", @address ]
    @details = {"total_value" => self.total_value, "address" => @address}

  end

  def average_price_of_car
    (total_value/inventory_count).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end
  
  


end