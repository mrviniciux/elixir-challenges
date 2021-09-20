defmodule SecretTest do
    use ExUnit.Case
    doctest Secrets
  
    test "test secret_combine 32 divide by 3 then multiply 5" do
      multiply = Secrets.secret_divide(3)
      divide = Secrets.secret_add(5)
      combined = Secrets.secret_combine(multiply, divide)

      assert combined.(32) == 15
    end


end
  