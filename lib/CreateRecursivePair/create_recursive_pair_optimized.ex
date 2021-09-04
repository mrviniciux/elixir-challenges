defmodule CreateRecursivePairOptimized do
     @moduledoc ~S"""
     #Create Recursive Pair
     Giving an array, create a clone for each value

    ## Examples

        iex> CreateRecursivePairOptimized.from([1,2])
        [1,2,1,2]
    """

    def from(range_list) do
        Enum.reduce(range_list, [], fn (x, acc) -> [x | [x | acc]] end)
          |> Enum.reverse()
    end
end