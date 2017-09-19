alias LinkingProc, as: LP

defmodule LinkingProcTest do
  use ExUnit.Case

  describe "the first test suite" do

    @tag :only_the_truth
		test "create processes: n processes are created" do
			proc_number = 8
		  processes = LP.create_processes(proc_number)
		  assert Enum.count(processes) == proc_number
		end

  end
end
