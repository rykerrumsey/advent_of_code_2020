defmodule AdventOfCode.Day1 do
    defp convert_file_to_list(filepath) do
      path = Path.expand(filepath)
      {:ok, file} = File.read(path)
      String.split(file, "\n")
    end

    defp has_match(x, index) do
      IO.inspect(x)
      IO.inspect(index)
    end

    def sum_to_2020() do
      [first | rest] = convert_file_to_list("./lib/day1/input")


        |> Enum.with_index
        |> Enum.any?(fn {x, i} ->
            has_match(x, i)
          end)

    end
end
