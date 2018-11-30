class DockingStation

  DEFAULT_CAPACITY = 20
 p DEFAULT_CAPACITY
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    raise "There is no bike available" if empty?
    @bikes.pop
  end


  def dock_bike(bikes)
    raise "There is no space available" if full?
    @bikes << bikes
  end

  private
  def full?
    if @bikes.length == DEFAULT_CAPACITY
      true
    end
  end

  def empty?
    if @bikes.length == 0
      true
    end
  end

end


class Bike
  def working?
    true
  end
end
