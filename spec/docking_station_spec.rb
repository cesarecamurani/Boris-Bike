require "docking_station"
require "bike"

describe DockingStation do

  describe "release" do
    it { expect { subject.release }.to raise_error "Station is empty"}
  end

  describe "dock" do
    it "raise an error when rack is full" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
    expect { subject.dock("Pinnacle") }.to raise_error "Station is full"
    end
  end

  it "set an initial capacity" do
    station1 = DockingStation.new(30)
    expect(station1.capacity).to eq(30)
  end

  it "set the default capacity to 20" do
    station2 = DockingStation.new
    expect(station2.capacity).to eq(20)
  end

end



describe Bike do
  it { expect(Bike.new.working?) }
end
