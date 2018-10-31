class DockingStation
   attr_reader :bike

   def release
     fail "Station is empty" unless @bike
     @bike
   end

   def dock(bike)
     @bike = bike
   end


end




class Bike
  def working?
  end
end
