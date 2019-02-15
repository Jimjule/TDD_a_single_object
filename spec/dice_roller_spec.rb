require 'dice_roller.rb'

describe Dice do
  it "dice output between 1 and 6" do
    dice = Dice.new
    expect(dice.roll[0]).to be_between(1, 6)
  end

  it "can roll any number of dice" do
    dice = Dice.new
    dice.roll(6)
  end

  it "uses the #rand method" do
    dice = Dice.new
    dice.roll
    expect(subject).to receive(:rand).and_return(0)
    expect(subject.roll[0]).to eq 1
  end

  it "outputs a number" do
    dice = Dice.new
    expect(dice.roll[0]).to be_an(Integer)
  end

  it "responds to #roll" do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end
end

# describe THING do
#   it 'what it should do' do
#     expect(message).to eq "Hello World!"
#   end
# end
