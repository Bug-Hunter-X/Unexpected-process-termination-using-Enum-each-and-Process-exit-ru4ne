```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    # Handle the case where x == 3 without exiting the process
    {:error, :condition_met}
  else
    IO.puts(x)
    :ok
  end
end)
```