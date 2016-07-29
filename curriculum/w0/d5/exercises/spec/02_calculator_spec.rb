# # Topics
#
# * functions
# * math
# * arrays
# * iterating/looping
#
# # Calculator
#
# you will build a simple calculator script with the following methods:
#
# `add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `multiply` takes two parameters and multiplies them
#
# `sum` takes an *array* of parameters and adds them all together
#
# `power` takes two parameters and raises the first number to the power of the
# second number
#
# `factorial` which takes one parameter and returns its factorial.

require "02_calculator"

describe "add" do
  it "adds 0 and 0" do
    expect(add(0, 0)).to eq(0)
  end

  it "adds 2 and 2" do
    expect(add(2, 2)).to eq(4)
  end

  it "adds positive numbers" do
    expect(add(2, 6)).to eq(8)
  end
end

describe "subtract" do
  it "subtracts numbers" do
    expect(subtract(10, 4)).to eq(6)
  end
end

describe "multiply" do
  it "multiplies numbers" do
    expect(multiply(2, 3)).to eq(6)
  end

  it "multiplies negative numbers" do
    expect(multiply(-3, -4)).to eq (12)
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    expect(sum([])).to eq(0)
  end

  it "computes the sum of an array of one number" do
    expect(sum([7])).to eq(7)
  end

  it "computes the sum of an array of two numbers" do
    expect(sum([7, 11])).to eq(18)
  end

  it "computes the sum of an array of many numbers" do
    expect(sum([1, 3, 5, 7, 9])).to eq(25)
  end
end

describe "power" do
  it "raises the first number by the second number" do
    expect(power(2, 3)).to eq(8)
  end

  it "takes in negative numbers" do
    expect(power(-3, 3)).to eq(27)
  end

  it "works with 0 correctly" do
    expect(power(2, 0)).to eq(1)
  end
end

describe "factorial" do
  it "returns the correct factorial" do
    expect(factorial(3)).to eq(6)
  end

  it "returns the correct factorial for 0" do
    expect(factorial(0)).to eq(0)
  end
end
