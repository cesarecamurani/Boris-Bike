require "docking_station"

describe DockingStation do
  it { expect(DockingStation.new.release_bike) }
  it { expect(DockingStation.new.dock_bike) }

  describe "release_bike" do
    it {expect { DockingStation.new.release_bike }.to raise_error "Station is empty"}
  end
end



describe Bike do
  it { expect(Bike.new.working?) }
end
