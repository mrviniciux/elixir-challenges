defmodule CreateRecursivePair do
  @moduledoc """
  Documentation for `CreateRecursivePair`.
  """

  @doc """
  Integer

  ## Examples

      iex> CreateRecursivePair.hasnt_pair([1,1,2,3,3], 2)
      true

  """

    def hasnt_pair(arr, value) do
        Enum.count(Enum.filter(arr, fn(filtered_value) -> filtered_value == value end)) < 2
    end

    def create_pairs_from(value) do
        range_list = [0,1,2,3,4,5]

        Enum.reduce(range_list, fn curr, prev ->
            case prev do
                0 -> []
                1 -> 1
                5 -> 5
                nil -> "nulo wtf"
                _ -> IO.puts(curr)
            end
        end)
    end

end