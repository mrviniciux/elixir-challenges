defmodule BinaryGapTest do
  use ExUnit.Case
  doctest BinaryGap


  test "assert binary gap from int value" do
    assert BinaryGap.from(15) == 0
  end
end
