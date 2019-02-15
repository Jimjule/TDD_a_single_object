class Dice
  def roll(quantity = 1)
    result = []
    quantity.times do
      result << rand(6) + 1
    end
    return result
  end
end
