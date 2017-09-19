defmodule LinkingProc do
  @moduledoc """
  LinkingProc is a module that tests linking processes in various configurations: ring, tree
  """

  def create_processes(number_of_processes) do
    processes = 1..number_of_processes |> Enum.map(fn _ -> spawn(fn  -> loop end) end)
  end

  defp loop() do
    receive do
      {:link, pid} -> Process.link(pid)
      loop
      :crash -> 1/0
      loop
    end
  end
end
