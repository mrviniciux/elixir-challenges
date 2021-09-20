defmodule FreelancerRates do
    @moduledoc ~S"""
    ## FreelancerRates

    You'll be writing code to help a freelancer communicate with a project manager by providing a few utilities to quickly calculate daily and monthly rates, optionally with a given discount.

    We first establish a few rules between the freelancer and the project manager:

    The daily rate is 8 times the hourly rate.
    A month has 22 billable days.
    The freelancer is offering to apply a discount if the project manager chooses to let the freelancer bill per month, which can come in handy if there is a certain budget the project manager has to work with.

    Discounts are modeled as fractional numbers representing percentage, for example 25.0 (25%).
    """

    def daily_rate(hourly_rate) do hourly_rate * 8.0 |> Float.round(1) end
  
    def apply_discount(before_discount, discount) do
        (before_discount - (before_discount / 100.0) * discount)
    end
  
    def monthly_rate(hourly_rate, discount) do
        price_month = (daily_rate(hourly_rate) * 22)
        apply_discount(price_month, discount) |> Float.ceil() |> trunc()
    end
  
    def days_in_budget(budget, hourly_rate, discount) do
      # Please implement the days_in_budget/3 function
      val_with_discount = FreelancerRates.daily_rate(hourly_rate) |> FreelancerRates.apply_discount(discount)
      
      (budget / val_with_discount) |> Float.floor(1)
    end
  end