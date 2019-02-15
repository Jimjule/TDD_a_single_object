class Dice
  def initialize
    @result = []
  end

  def roll(quantity = 1)
    quantity.times do
      @result << rand(6) + 1
    end
    return @result
  end
end
