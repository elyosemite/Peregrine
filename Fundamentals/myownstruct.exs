defmodule MyOwnStruct do
  defstruct [:name, :age, :city]

  def new(name, age, city) do
    %myownstruct{name: name, age: age, city: city}
  end

  def display(%myownstruct{name: name, age: age, city: city}) do
    "Name: #{name}, Age: #{age}, City: #{city}"
  end
end
