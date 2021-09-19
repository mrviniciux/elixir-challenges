defmodule BinaryGap do
    @moduledoc ~S"""
    A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

    Write a function:

    function solution(N);

    that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
    """

    @spec to_bin(Integer) :: String.t()
    defp to_bin(int) do
        Integer.to_string(int, 2)
    end

   @doc ~S"""
   Returns how many ones are present in the String
   ### Examples
       iex> BinaryGap.count_ones("10001")
       2
   """
    @spec count_ones(String.t()) :: integer
    def count_ones(bin_str) do
        String.split(bin_str, "0") 
        |> Enum.filter(fn item -> String.contains?(item, "1") end)
        |> Enum.join("")
        |> String.length()
    end

   @doc ~S"""
   Returns the length of the longest binary gap
   ### Examples
       iex> BinaryGap.from(9)
       2
   """
    @spec from(String.t()) :: integer
    def from str_binary do
        to_bin(str_binary)
        |> String.split("1")
        |> Enum.slice(0, count_ones(to_bin(str_binary)))
        |> Enum.sort(&(&1 >= &2))
        |> Enum.at(0)
        |> String.length()
    end
end