defmodule EthSync.Infura do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://ropsten.infura.io/")

  # encode/decode body as json
  # Infura doesn't set the "content-type" header to "application/json"
  # so we need to tell Tesla that we want text/plain requests to be decoded as well
  plug(Tesla.Middleware.JSON, decode_content_types: ["text/plain; charset=utf-8"])

  @doc "Get an entire block"
  def get_block(number) do
    case call(:eth_getBlockByNumber, [to_hex(number), true]) do
      {:ok, nil} ->
        {:error, :block_not_found}

      error ->
        error
    end
  end

  @doc "Sends a JSON-RPC call to the server"
  defp call(method, params \\ []) do
    case post("", %{jsonrpc: "2.0", id: "call_id", method: method, params: params}) do
      {:ok, %Tesla.Env{status: 200, body: %{"result" => result}}} ->
        {:ok, result}

      {:error, _} = error ->
        error
    end
  end

  @doc "Converts integer values to hex strings"
  def to_hex(decimal), do: "0x" <> Integer.to_string(decimal, 16)
end