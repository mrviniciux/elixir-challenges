defmodule Username do

   def to_sanitize_string(x) do
      case x do
        x when x >= 97 and x <= 122 -> x
        _ -> 0
      end
    end

  def sanitize([]), do: []
  def sanitize(username) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Please implement the saniteize/1 function
    username 
    |>
    Enum.reduce([], fn (x, acc) -> [to_sanitize_string(x) | acc] end)
    |>
    Enum.filter(&(&1 > 0))
  end
end