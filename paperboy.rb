class Paperboy

  attr_accessor :name, :quota, :experience, :side, :earnings

  def initialize(name, side)
    @name = name
    @experience = 0
    @quota = (@experience / 2) + 50
    @side = side
    @earnings = 0
  end

  def quota
    @quota
  end

  def deliver(start_address, end_address)
    @experience = @experience + @experience
    @quota = (@experience / 2) + 50
    above_quota = 0
    @start_address = start_address
    @end_address = end_address
    @experience = @end_address - @start_address
    if @experience < @quota
    @earnings = @earnings + (@experience * 0.25) - 2
    else
    above_quota = @experience - @quota
    @earnings = @earnings + (@quota * 0.25) + (above_quota * 0.5)
    end
    @earnings
  end


  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far."
  end
end

jason = Paperboy.new('Jason', 'even')


puts jason.deliver(100, 220)
puts jason.quota
puts jason.report

puts jason.deliver(1, 150)
puts jason.quota
puts jason.report
