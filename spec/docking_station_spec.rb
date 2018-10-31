require "docking_station"

describe DockingStation do

  describe "release" do
    it { expect { DockingStation.new.release }.to raise_error "Station is empty"}
  end

  describe "dock" do
    it do
    station1 = DockingStation.new
    station1.dock("Pinnacle")
    expect { station1.dock("BMC") }.to raise_error "Station is full"
    end
  end

end

describe Bike do
  it { expect(Bike.new.working?) }
end
