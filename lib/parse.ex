defmodule ParseTest.Parse do
  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
    |> IO.puts()

    test = "amqps://test_user:Pa?sword@amazon.aws.com"
    test |> String.to_charlist() |> :amqp_uri.parse() |> IO.puts()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response({opts, word}) do
    if opts[:upcase], do: String.upcase(word), else: word
  end
end
