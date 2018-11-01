require "docking_station"

describe DockingStation do

  describe "#release" do
    it { expect { subject.release }.to raise_error "Station is empty"}
  end

  describe "#dock" do
    it "raise an error when rack is full" do
    20.times { subject.dock(Bike.new)}
    expect { subject.dock("Pinnacle") }.to raise_error "Station is full"
  end
  end

end

describe Bike do
  it { expect(Bike.new.working?) }
end
