defmodule OddOcurrencesInArray do
  use Bitwise
  @moduledoc """
  Given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.

  For example, given array A such that:

  A[0] = 9 A[1] = 3 A[2] = 9 A[3] = 3 A[4] = 9 A[5] = 7 A[6] = 9
  the function should return 7, as explained in the example above.
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
