class DockingStation

  attr_reader :bikes

  def release_bike
    raise "There is no bike available" unless @bikes
    @bikes
  end

  def dock_bike(bikes)
    raise "There is no space available" if @bikes
    @bikes = bikes
  end

end

class Bike
  def working?
    true
  end
end
