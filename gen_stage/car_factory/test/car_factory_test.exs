defmodule CarFactoryTest do
  use ExUnit.Case
  doctest CarFactory

  test "greets the world" do
    assert CarFactory.hello() == :world
  end
end
