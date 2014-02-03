defmodule ConwayTest do
  use ExUnit.Case

  test "alive and underpopulated" do
    assert(Conway.Cell.lives(:alive, 1) == :dead)
  end

  test "alive and overpopulated" do
    assert(Conway.Cell.lives(:alive, 4) == :dead)
  end

  test "alive and lives with 3" do
    assert(Conway.Cell.lives(:alive, 3) == :alive)
  end

  test "dead and gives birth with 3" do
    assert(Conway.Cell.lives(:dead, 3) == :alive)
  end

end
