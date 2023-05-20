# Case allows us to compare a value against many patterns until we find a matching one:

case {1, -2, 3} do
  {4, 5, 6} ->
    IO.puts "This clause won't match"
  {1, x, 3} when x > 0 ->
    IO.puts "This clause will match and bind x to 2 in this clause"
  _ ->
    IO.puts "This clause would match any value"
end

# With anonymous functions

f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

IO.puts f.(1, 3)
IO.puts f.(-1, 3)
