# Documented Process

The purpose of this document is to track and provide evidence of my design process as I build a single-object dice program.

# Plan

The program will be made according to the objectives listed in the README and on diode.
For the purpose of TDD (Red, Green, Refactor), I will construct an RSpec test that fails, and then build the program around the error messages, before refactoring.

# Structure

Dice class - My single object, which will contain all of the necessary methods to fulfil my objectives.
Array of the numbers 1-6, passed to the roll_dice method.
roll method - Runs #sample on the array to randomly roll the dice, and stores the result as an array. May require use of the #times method to roll the necessary number of dice.
result method - Returns the array of the value of the dice rolls

# Process

BUILD A SINGLE DICE OBJECT

R - Described Dice class in RSpec, failed (NameError: uninitialised constant Dice)
G - Initialised Dice class, passed
Rf - None

COMPLETED
THIS OBJECT SHOULD ROLL A DIE

R - Expected dice.roll == 6, fail (NoMethodError: undefined method ‘roll’ for Dice:Class)
R - Defined roll method, fail (expected: 6 got: nil)
G - Gave roll method a value of 6, passed
Rf - None

COMPLETED
DIE SHOULD BE SIX-SIDED

G - Expected dice.roll to be between 1 and 6, passed
R - Changed roll output to 7, failed
G - Changed output to an array between 1 and 6 and called #sample, passed
Rf - Replaced array and #sample with rand(6) + 1, passed

COMPLETED
RESULT SHOULD BE RANDOMLY PICKED

R - Expected result to be random, failed
G - Expected to use #rand, passed

COMPLETED
ROLL ANY NUMBER OF DICE

R - Described a dice instance being passed dice.roll(6), failed (ArgumentError wrong number of arguments (given 1, expected 0))
G - Gave #roll argument quantity = 1, passed

COMPLETED
RESULT SHOULD BE SHOWN

G - Expected dice.roll to be an integer, passed

COMPLETED
SHOULD RESPOND TO #ROLL

R - Expected dice to respond to #not_a_method, failed
G - Expected dice to respond to #roll, passed

COMPLETED
