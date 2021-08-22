use Bitwise

odd_occurrences = [1,1,2,2,3,3,4,5,5,6,6];

IO.puts(Enum.reduce(odd_occurrences, fn(prev, curr) -> bxor(prev, curr) end))
