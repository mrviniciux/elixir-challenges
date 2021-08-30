defmodule OddOcurrencesInArray do
  use Bitwise
  @moduledoc """
  Documentation for `OddOcurrencesInArray`.
  """

  @doc """
  Integer

  ## Examples

      iex> OddOcurrencesInArray.from([1,1,2,3,3])
      2

  """

  def from(arr) do
    odd_occurrences = arr
    Enum.reduce(odd_occurrences, fn(prev, curr) -> bxor(prev, curr) end)
  end
end
