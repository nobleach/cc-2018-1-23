defmodule MultiplesTest do
  use ExUnit.Case
  doctest Multiples

  test "returns 23 for a limit of 10" do
    assert Multiples.sumNaturalNumbers(10) == 23
    assert Multiples.sumNaturalNumbers(1000) == 233168 # This is the answer Project Euler wants
  end

  test "isEvenlyDivisibleBy5Or3 returns the multiple if it's evenly divisible by 5 or 3" do
    assert Multiples.isEvenlyDivisibleBy5Or3(15) == 15
    assert Multiples.isEvenlyDivisibleBy5Or3(10) == 10
    assert Multiples.isEvenlyDivisibleBy5Or3(9) == 9
  end

  test "isEvenlyDivisibleBy5Or3 returns 0 if it's not evenly divisible by 5 or 3" do
    assert Multiples.isEvenlyDivisibleBy5Or3(14) == 0
  end
end
