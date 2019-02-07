require 'dice_roller.rb'

describe Dice do
  dice = Dice.new
  it "rolling the dice equals 6" do
    expect(dice.roll).to eq 6
  end
end


# describe THING do
#   it 'what it should do' do
#     expect(message).to eq "Hello World!"
#   end
# end
