class DockingStation

  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    raise "There is no bike available" if @bikes.length == 0
    @bikes.pop
  end

  def dock_bike(bikes)
    raise "There is no space available" if @bikes.length == 20
    @bikes << bikes
  end

end

class Bike
  def working?
    true
  end
end
