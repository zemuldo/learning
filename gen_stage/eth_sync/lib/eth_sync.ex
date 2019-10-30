defmodule EthSync do
  alias EthSync.Producer
  alias EthSync.Consumer

  def start do
    IO.puts("Starting processes")

    IO.puts("Starting producer")
    :timer.sleep(2_000)
    {:ok, producer} = GenStage.start_link(Producer, [])

    IO.puts("Starting consumer")
    :timer.sleep(2_000)
    {:ok, consumer} = GenStage.start_link(Consumer, [])
    
    IO.puts("Firing up demand")
    :timer.sleep(2_000)
    GenStage.sync_subscribe(consumer, to: producer, max_demand: 10)
  end
end
