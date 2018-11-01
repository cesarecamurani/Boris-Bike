class DockingStation
   attr_reader :bike, :capacity, :rack

   def initialize
     @rack = []
     @capacity = 20

   end

   def release
     fail "Station is empty" if @rack.empty?
   end

   def dock(bike)
     fail "Station is full" if @rack.count >= @capacity
     @rack << bike

  end

end

class Bike
  def working?
    true
  end
end
