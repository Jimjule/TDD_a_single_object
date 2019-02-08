class Dice
  def roll(quantity = 1)
    quantity.times do
      puts rand(6) + 1
    end
  end
end
