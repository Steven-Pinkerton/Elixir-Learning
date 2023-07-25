defmodule Elixir-LearningWeb.Layouts.View do
  use Phoenix.View, root: "lib/elixir-_learning_web", path: "layouts/templates", namespace: Elixir-LearningWeb
  use Phoenix.HTML

  import Phoenix.Flash, only: [get: 2]

  alias Elixir-LearningWeb.Router.Helpers, as: Routes
end
