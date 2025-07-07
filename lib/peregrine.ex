defmodule Peregrine do
  @moduledoc """
  Documentation for `Peregrine`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Peregrine.hello()
      :world

  """
  def hello do
    :world
  end

  def sum_two_numbers(a, b) do
    case {a, b} do
      {x, y} when is_number(x) and is_number(y) and a >=0 and b >= 0 ->
        x + y
      _ ->
        {:error, "Both arguments must be numbers"}
    end
  end
end
