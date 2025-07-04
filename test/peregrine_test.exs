defmodule PeregrineTest do
  use ExUnit.Case
  doctest Peregrine

  test "greets the wsorld" do
    assert Peregrine.hello() == :world
  end

  test "sum_two_numbers with valid inputs" do
    assert Peregrine.sum_two_numbers(3, 4) == 7
    assert Peregrine.sum_two_numbers(-3, -4) != 7
    assert Peregrine.sum_two_numbers(0, 0) == 0
    assert Peregrine.sum_two_numbers(-1, -1) == {:error, "Both arguments must be numbers"}
  end
end
