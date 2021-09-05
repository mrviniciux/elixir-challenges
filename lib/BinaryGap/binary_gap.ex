defmodule BinaryGap do
    defp to_bin(int) do
        Integer.to_string(int, 2)
    end

    def count_ones(bin_str) do
        String.split(bin_str, "0") 
        |> Enum.filter(fn item -> String.contains?(item, "1") end)
        |> Enum.join("")
        |> String.length()
    end

    def from num do
        to_bin(num)
        |> String.split("1")
        |> Enum.slice(0, count_ones(to_bin(num)))
        |> Enum.sort(&(&1 >= &2))
        |> Enum.at(0)
        |> String.length()
    end
end