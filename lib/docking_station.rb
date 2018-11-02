require_relative "bike"

class DockingStation
   attr_reader :bike, :capacity, :rack
   DEFAULT_CAPACITY = 20

   def initialize(capacity = DEFAULT_CAPACITY)
     @rack = []
     @capacity = capacity
   end

   def release
     empty?
   end

   def dock(bike)
     full?
     @rack << bike
  end


  private

  def full?
     fail "Station is full" if @rack.count >= DEFAULT_CAPACITY
  end

  def empty?
     fail "Station is empty" if @rack == []
  end
end
