
defmodule EthSync.Producer do
  alias EthSync.Infura
  use GenStage

  def init(_) do
    {:producer, 5}
  end

  def handle_demand(demand, next_block) when demand > 0 do
    IO.puts("Demanding #{demand}")

    blocks =
      next_block..(next_block - 1 + demand)
      |> Enum.map(fn n ->
        IO.puts("Fetching block #{n}")
        Infura.get_block(n)
      end)

    {:noreply, blocks, next_block + length(blocks)}
  end
end