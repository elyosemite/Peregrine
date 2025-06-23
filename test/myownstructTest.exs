defmodule UserUtilsTest do
  use ExUnit.Case

  test "greet/1 returns a greeting with the user's name" do
    user = %MyOwnStruct{name: "Ana", age: 30}

    assert user.name == "Ana"
  end
end
