defmodule ShowName do
    @moduledoc ~S"""
    Module to receive object and show the name
    """

    @type person() :: %{required(:name) => String.t()}

    @spec from(%{required(:name) => String.t()}) :: String.t()

   @doc ~S"""
   Return a String from the attribute name
   ### Examples
       iex> ShowName.from(%{name: "Marcos"})
       "Marcos"
   """
    def from person do
        person.name
    end

end