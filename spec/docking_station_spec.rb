require "docking_station"

describe DockingStation do

  it { expect(DockingStation.new.dock("BMC")) }

  describe "release" do
    it { expect { DockingStation.new.release }.to raise_error "Station is empty"}
  end
end



describe Bike do
  it { expect(Bike.new.working?) }
end
