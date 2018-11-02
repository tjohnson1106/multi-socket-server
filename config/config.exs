# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chat_server,
  ecto_repos: [ChatServer.Repo]

# Configures the endpoint
config :chat_server, ChatServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iUK9omPerA5j7/5WJl1j5V5zsJiMqoxYV3T64ZD3oGpzRjZDAx0njmp9cLcT8wdw",
  render_errors: [view: ChatServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatServer.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
