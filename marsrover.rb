class Rover

  attr_accessor :x, :y, :direction

def initialize(x,y,d)
  @x_coordinate = x
  @y_coordinate = y
  @direction = d
end

def read_instruction(next_move)
  next_move.split("").each do |next_move|
  case next_move
    when "L"
      turn_left
    when "R"
      turn_right
    when "M"
      move
  end
end
end

def turn_left
  case @direction
    when "N"
      @direction = "W"
    when "W"
      @direction = "S"
    when  "S"
      @direction = "E"
    when "E"
      @direction = "N"
  end
end

def turn_right
  case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
  end
end

def move
  case @direction
  when "N"
    @y_coordinate += 1
  when "S"
    @y_coordinate -= 1
  when "E"
    @x_coordinate += 1
  when "W"
    @x_coordinate -= 1
  end
end

def report
  "My position is #{@x_coordinate} #{@y_coordinate} and I am facing #{direction}."
end

end

jason = Rover.new(1,1,'N')
jason.read_instruction('MMRR')
puts jason.report

fred = Rover.new(2,2,'S')
fred.read_instruction('RRMM')
puts fred.report
