defmodule Elixir-Learning.Application do
  @moduledoc """
  Main entry point of the app
  """

  use Application

  def start(_type, _args) do
    children = [
      Elixir-Learning.Repo,
      {Phoenix.PubSub, [name: Elixir-Learning.PubSub, adapter: Phoenix.PubSub.PG2]},
      Elixir-LearningWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Elixir-Learning.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Elixir-LearningWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
