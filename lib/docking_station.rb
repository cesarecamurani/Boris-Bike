class DockingStation
   attr_reader :bike

   def release_bike
     Bike.new
   end

   def dock_bike
   end

end


class Bike
  def working?
  end
end
