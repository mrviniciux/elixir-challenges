defmodule CreateRecursivePairTest do
  use ExUnit.Case
  doctest CreateRecursivePair


  test "new array containing range of pairs" do
    assert CreateRecursivePair.create_pairs_from(5) == [0,1,2,3,4,5]
  end
end
