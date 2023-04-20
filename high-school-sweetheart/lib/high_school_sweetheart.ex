defmodule HighSchoolSweetheart do

  import String

  def first_letter(name) do
    name
    |> trim()
    |> first()
  end

  def initial(name) do
    name
    |> first_letter()
    |> upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name
    |> split()
    |> Enum.map(&initial(&1))
    |> List.insert_at(1, " ")
    |> to_string()
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
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
