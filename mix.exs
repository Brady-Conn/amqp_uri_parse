defmodule ParseTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :parse_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      deps: deps(),
      escript: escript()
    ]
  end

  defp escript do
    [main_module: ParseTest.Parse]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:amqp_client, "~> 3.9.1"}
    ]
  end
end
