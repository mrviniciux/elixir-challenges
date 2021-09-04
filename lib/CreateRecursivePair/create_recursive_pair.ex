defmodule CreateRecursivePair do
     @moduledoc ~S"""
     #Create Recursive Pair
     Giving an array, create a clone for each value

    ## Examples

        iex> CreateRecursivePair.from([1,2])
        [1,1,2,2]
    """

    defp is_odd(arr, value) do
        Enum.count(Enum.filter(arr, fn(filtered_value) -> filtered_value == value end)) < 2
    end

    defp create_pairs(arr, value) do
        is_odd(arr,value) && arr ++ [value]
    end

    def from(range_list) do
        Enum.reduce(range_list, range_list, fn(curr, prev) -> create_pairs(prev, curr) end) |> Enum.sort()
    end
end