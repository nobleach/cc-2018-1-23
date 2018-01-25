defmodule Multiples do
    def sumNaturalNumbers(limit) do
        naturalRange = 1..limit - 1
        sum = Enum.reduce(naturalRange, 0, fn i, acc -> Multiples.isEvenlyDivisibleBy5Or3(i) + acc end)
        IO.inspect(sum)
    end

    def isEvenlyDivisibleBy5Or3(multiple) do
        remainder5 = rem(multiple, 5)
        remainder3 = rem(multiple, 3)

        cond do
            remainder5 == 0 || remainder3 == 0 -> multiple
            remainder5 > 0 || remainder3 > 0 -> 0
        end
    end
end
