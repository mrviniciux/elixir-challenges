defmodule RPG.CharacterSheet do
    def welcome(), do: IO.puts("Welcome! Let's fill out your character sheet together.")
  
    def ask_name(), do: IO.gets("What is your character's name?\n") |> String.trim
  
    def ask_class(), do: IO.gets("What is your character's class?\n") |> String.trim
  
    def ask_level(), do: IO.gets("What is your character's level?\n") |> String.trim |> String.to_integer
  
    def char_definition() do
        io_name = ask_name()
        io_class = ask_class()
        io_level = ask_level()
        %{class: io_class, level: io_level, name: io_name}
    end
  
    def run() do
      welcome()
      "\n Your character: "
      IO.inspect(char_definition())
    end
  end
  