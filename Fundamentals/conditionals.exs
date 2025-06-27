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


# Cond
# scase is useful when you need to match against different values. However, in many circumstances, we want to check different conditions and find the first one that does not evaluate to nil or false. In such cases, one may use cond:
cond do
  2 + 2 == 5 ->
    IO.puts "This will not be true"
  2 * 3 == 1 ->
    IO.puts "Nor this"
  :ok == :networkerror ->
    IO.puts "Nor me"
  :success == :successw ->
    IO.puts "But this will"
  true ->
    IO.puts "This is always true (equivalent to else)"
end

cond do
  hd([1, 2, 3]) ->
    IO.puts "1 is considered as true"
end

# If
if nil do
  IO.puts "This works!"
else
  IO.puts "This will"
end

unless nil do
  IO.puts "unless"
end

x = 1

x = if true do
  x + 1
else
  x
end

IO.puts x

case { 1, 2, 3 } do
  { 4, 5, 6 } ->
    IO.puts "This clause won't match"
  { 1, child_age, 3 } when child_age == 2 ->
    IO.puts "This clause will match and bind x to 2 in this clause"
  _ ->
    IO.puts "This clause would match any value"
end
