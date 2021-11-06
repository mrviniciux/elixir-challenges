defmodule HighSchoolSweetheart do
  def first_letter(name) do 
    name |> String.trim() |> String.split_at(1) |> elem(0) |> String.upcase()
  end

  def initial(name), do: first_letter(name) <> "."

  def initials(full_name) do
    full_name |> String.split(" ") |> Enum.map(&(&1 |> initial)) |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
  name1 = initials(full_name1)
  name2 = initials(full_name2)
  """
          ******       ******
        **      **   **      **
      **         ** **         **
     **            *            **
     **                         **
     **     #{name1}  +  #{name2}     **
      **                       **
        **                   **
          **               **
            **           **
              **       **
                **   **
                  ***
                   *
   """

  end
end
