class DockingStation
   attr_reader :bike, :capacity

   def initialize
     @capacity = 0
   end

   def release
     fail "Station is empty" unless @bike
     @bike
   end

   def dock(bike)
     fail "Station is full" unless @capacity < 1
     @capacity += 1
     @bike = bike
   end


end

class Bike
  def working?
  end
end
