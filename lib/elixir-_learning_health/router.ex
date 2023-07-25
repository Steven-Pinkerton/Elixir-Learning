defmodule Elixir-LearningHealth.Router do
  use Plug.Router

  defmodule Health do
    use Plug.Router

    plug(:match)
    plug(:dispatch)

    forward(
      "/",
      to: PlugCheckup,
      init_opts:
        PlugCheckup.Options.new(
          json_encoder: Jason,
          checks: Elixir-LearningHealth.checks(),
          error_code: Elixir-LearningHealth.error_code(),
          timeout: :timer.seconds(5),
          pretty: false
        )
    )
  end

  plug(:match)
  plug(:dispatch)

  forward("/health", to: Health)

  match(_, do: conn)
end
