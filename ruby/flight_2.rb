# write a Flight module

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

# declare classes for a bird and a plane

class Bird
  include Flight
end

class Plane
  include Flight
end

# instances of our Bird and Plane classes will have the ability to take off

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
