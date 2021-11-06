defmodule FreelancerRatesTest do
    use ExUnit.Case
    doctest FreelancerRates
  
    test "assert apply discount round" do
        assert_in_delta(FreelancerRates.apply_discount(111.11, 13.5), 96.11015, 1.0e-6)
    end

    test "assert monthly_rate to be rounded up and result as expected" do
        assert FreelancerRates.monthly_rate(62.8, 0.0) == 11_053
    end

    test "assert how many days of work the information given covers" do
        assert FreelancerRates.days_in_budget(20_000, 80, 11.0) == 35.1
    end   
end