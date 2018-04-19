defmodule ProtocolExpTest do
  use ExUnit.Case
  doctest ProtocolExp

  test "greets the world" do
    assert ProtocolExp.hello() == :world
  end
end
