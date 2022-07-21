defmodule ParseTest.Parse do
  def main(args \\ []) do
    args
    |> parse_args()
    |> String.to_charlist()
    |> :amqp_uri.parse()
    |> IO.puts()
  end

  defp parse_args(args) do
    case OptionParser.parse(args, strict: []) do
      {_, [connection_string | _], _} ->
        connection_string

      {_, [], _} ->
        "amqps://test_user:Pa?sword@amazon.aws.com"

    end

  end

end
