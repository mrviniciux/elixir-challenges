defmodule ElixirChallengesTest do
  use ExUnit.Case
  doctest ElixirChallenges

  test "greets the world" do
    assert ElixirChallenges.hello() == :world
  end
end
