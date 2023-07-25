import Config

version = Mix.Project.config()[:version]

config :elixir-_learning,
  ecto_repos: [Elixir-Learning.Repo],
  version: version

config :phoenix, :json_library, Jason

config :elixir-_learning, Elixir-LearningWeb.Endpoint,
  pubsub_server: Elixir-Learning.PubSub,
  render_errors: [view: Elixir-LearningWeb.Errors.View, accepts: ~w(html json)]

config :elixir-_learning, Elixir-Learning.Repo, start_apps_before_migration: [:ssl]

config :elixir-_learning, Corsica, allow_headers: :all

config :elixir-_learning, Elixir-Learning.Gettext, default_locale: "en"

config :elixir-_learning, Elixir-LearningWeb.Plugs.Security, allow_unsafe_scripts: false

config :esbuild,
  version: "0.16.4",
  default: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :sentry,
  root_source_code_path: File.cwd!(),
  release: version

config :logger, backends: [:console, Sentry.LoggerBackend]

# Import environment configuration
import_config "#{Mix.env()}.exs"
