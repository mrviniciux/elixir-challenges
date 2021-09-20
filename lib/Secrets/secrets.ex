defmodule Secrets do
    use Bitwise
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


  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
   &(trunc(&1 * secret))
  end

  def secret_divide(secret) do
   &(trunc(&1 / secret))
  end

  def secret_and(secret) do
    &(Bitwise.&&&(secret, &1))
  end

  def secret_xor(secret) do
    &(Bitwise.^^^(secret, &1))
  end

  def secret_combine(secret_function1, secret_function2) do
    &(secret_function1.(&1) |> secret_function2.())
  end
end