defmodule Conway.World do
  defrecord Cells, width: 2, height: 2, contents: []

  def create(width, height, :dead) do
    dead_cell = fn -> :dead; end
    make(width, height, dead_cell)
  end

  def create(width, height, :rand) do
    rand_cell = fn -> state(:random.uniform(2)); end
    make(width, height, rand_cell)
  end

  def state_at(cells, x, y) when x >= 0 and x < cells.width and y >= 0 and y < cells.height do

  end

  defp make(width, height, f) do
    cells = lc x inlist Enum.to_list(0..width - 1), y inlist Enum.to_list(0..height - 1), do: cell(x, y, f.())
    Cells.new width: width, height: height, contents: cells
  end

  defp cell(row, column, the_state), do: [row: row, column: column, state: the_state]
  defp state(1), do: :dead
  defp state(2), do: :alive
end
