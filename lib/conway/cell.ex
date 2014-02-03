defmodule Conway.Cell do
  def lives(:alive, neighbours) when neighbours in 2..3, do: :alive
  def lives(:alive, neighbours) when (neighbours < 2),   do: :dead
  def lives(:alive, neighbours) when (neighbours > 3),   do: :dead
  def lives(:dead, 3),                                   do: :alive
  def lives(_, _),                                       do: :dead
end
