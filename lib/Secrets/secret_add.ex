defmodule Secrets do
    @moduledoc ~S"""
    Anon function exercise. 
    
    For each task, return an anonymous function that can be invoked from the calling scope. All functions should expect integer arguments. Integers are also suitable for performing bitwise operations in Elixir.
    """

   
   @doc ~S"""
   Returns a anon function which takes one argument and adds to it the argument passed on secret_add
   ### Examples
       iex> adder = Secrets.secret_add(2)
       iex> adder.(2)
       4
   """
   def secret_add(secret) do
      #&(&1 + secret)
      fn to_add -> to_add + secret end
   end
end