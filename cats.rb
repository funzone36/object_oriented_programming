class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
  end

  def eats_at(meal_time)
      day = ""
      @meal_time = meal_time
      if @meal_time > 11
        day = "PM"
        @meal_time -= 12
      else
        day = "AM"
      end
      @meal_time.to_s + " " + day
  end

  def meow
   "My name is #{@name} and I eat #{@preferred_food} at " + eats_at(@meal_time)
  end

end

jason = Cat.new('Jason', 'orange', 20)
fred = Cat.new('Fred', 'apple', 8)
puts jason.meow
puts fred.meow
