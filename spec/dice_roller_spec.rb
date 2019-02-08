require 'dice_roller.rb'

describe Dice do
  dice = Dice.new
  it "dice output between 1 and 6" do
    expect(dice.roll).to be_between(1, 6)
  end

  dice = Dice.new
  it "can roll any number of dice" do
    dice.roll(6)
  end

  let(:subject) { described_class.new }
  dice = Dice.new
  dice.roll
  it "uses the #rand method" do
     expect(subject).to receive(:rand).and_return(1)
     expect(subject.roll).to eq 1
  end

  dice = Dice.new
  it "outputs a number" do
    expect(dice.roll).to be_an(Integer)
  end
  dice = Dice.new
  it "responds to #roll" do
    expect(dice).to respond_to(:roll)
  end
end

# describe THING do
#   it 'what it should do' do
#     expect(message).to eq "Hello World!"
#   end
# end
