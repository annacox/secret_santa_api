# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :secret_santa_api,
  ecto_repos: [SecretSantaApi.Repo]

# Configures the endpoint
config :secret_santa_api, SecretSantaApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DS8RSEZ5riB+BJZ1lZhRZLgrPUa00l/1L+iRKmEu66F3cR1TYaXIkpf1HbJB8I5e",
  render_errors: [view: SecretSantaApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SecretSantaApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
