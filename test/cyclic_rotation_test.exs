defmodule CyclicRotationTest do
  use ExUnit.Case
  doctest CyclicRotation


  test "assert array rotation giving number of times" do
    assert CyclicRotation.from([3, 8, 9, 7, 6], 3) == [9, 7, 6, 3, 8]
  end
end
