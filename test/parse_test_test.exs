defmodule ParseTestTest do
  use ExUnit.Case
  doctest ParseTest

  test "greets the world" do
    assert ParseTest.hello() == :world
  end
end
