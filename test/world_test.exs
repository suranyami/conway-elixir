defmodule WorldTest do
  use ExUnit.Case

  test "creating" do
    assert(Conway.World.create(2, 2, :dead) == [
        [row: 0, column: 0, state: :dead],
        [row: 0, column: 1, state: :dead],
        [row: 1, column: 0, state: :dead],
        [row: 1, column: 1, state: :dead]
      ]
    )
  end
end
