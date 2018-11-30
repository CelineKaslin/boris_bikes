require "boris_bike"

describe DockingStation do
  it "releases a bike from the docking station" do
    expect(subject).to respond_to :release_bike
  end

  it "docks a bike to the docking station" do
    expect(subject).to respond_to :dock_bike
  end

  it "should have a DEFAULT_CAPACITY" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "gets working bike" do
    bikes = Bike.new
    expect(bikes).to be_working
  end

  it "docks a bike" do
    bikes = Bike.new
    expect (subject.dock_bike(bikes)).equal? bikes
  end

it "raise an error if no bike" do
  expect{subject.release_bike}.to raise_error "There is no bike available"
end

it "raise an error if docking station is full" do
  bikes = Bike.new
  DockingStation::DEFAULT_CAPACITY.times{subject.dock_bike(bikes)}
  expect{subject.dock_bike(bikes)}.to raise_error "There is no space available"
end


end
