defmodule EthSync.Consumer do
  use GenStage

  def init(_) do
    {:consumer, nil}
  end

  def handle_events(blocks, _from, state) do
    IO.puts("---------Start Bach---------")    
    IO.puts("Consumer received #{Enum.count(blocks)}")
    blocks
    |> Enum.each(fn
      {:ok, %{"number" => n}} ->
        IO.puts("Consumed block #{n}")
        :timer.sleep(3_000)
    end)
    IO.puts("Consumer processed #{Enum.count(blocks)}")
    IO.puts("---------End Bach---------")
    {:noreply, [], state}
  end
end