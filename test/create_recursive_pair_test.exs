defmodule CreateRecursivePairTest do
  use ExUnit.Case
  doctest CreateRecursivePair


  test "new array containing range of pairs" do
    assert CreateRecursivePair.from([0,1,2,3]) == [0,0,1,1,2,2,3,3]
  end
end
