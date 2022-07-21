# ParseTest

Small repo to easily replicate a bug I found in the rabbitmq-server elixir amqp package around parsing connection uri's

# Use

Requires elixir and mix

clone or fork repo to your local machine

run `mix deps.get`

run `mix escript.build`

run `./parse_test` 

optionally you can provide your own connection string to test against

by running `./parse_test amqps://test_user:Pa?sword@amazon.aws.com`

