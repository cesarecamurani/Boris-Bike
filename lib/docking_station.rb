class Bike
  def working?
    true
  end
end

class DockingStation
   attr_reader :bike, :capacity, :rack

   def initialize
     @rack = []
   end

   def release
     fail "Station is empty" if @rack.empty?
   end

   def dock(bike)
     fail "Station is full" if full?
     @rack << bike
  end

  private

  def full?
     @rack.count >= 20
  end

end
