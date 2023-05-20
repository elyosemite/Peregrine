{ a, b, c } = { :hello, "world", 43 }

IO.puts a
IO.puts b
IO.puts c

{:ok, result} = {:ok, 123}

IO.puts :ok
IO.puts result

[head | tail] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
IO.puts head
IO.puts tail
