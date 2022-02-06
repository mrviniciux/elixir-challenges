defmodule DateParser do
    def day(), do: "[0-9]"
  
    def month(), do: "[0-9]"
  
    def year(), do: "\\d\\d\\d\\d"
  
    def day_names(), do: "[A-Z]\\w"
  
    def month_names(), do: "[A-Z]\\w"
  
    def capture_day(), do: "[0-9]?[0-3][0-9]"
  
    def capture_month(), do: "[0-1][0-1]?[0-9]"
  
    def capture_year(), do: ~r/\d/
  
    def capture_day_name(), do: ~r/Mon|Tue|Wed|Thu|Fri|Sat|Sun[a-z]/
  
    def capture_month_name(), do: ~r/Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec[a-z]/
  
    def capture_numeric_date() do
      # Please implement the capture_numeric_date/0 function
    end
  
    def capture_month_name_date() do
      # Please implement the capture_month_name_date/0 function
    end
  
    def capture_day_month_name_date() do
      # Please implement the capture_day_month_name_date/0 function
    end
  
    def match_numeric_date() do
      # Please implement the match_numeric_date/0 function
    end
  
    def match_month_name_date() do
      # Please implement the match_month_name_day/0 function
    end
  
    def match_day_month_name_date() do
      # Please implement the match_day_month_name_date/0 function
    end
  end