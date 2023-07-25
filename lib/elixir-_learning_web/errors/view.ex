defmodule Elixir-LearningWeb.Errors.View do
  use Phoenix.View, root: "lib/elixir-_learning_web", path: "errors/templates", namespace: Elixir-LearningWeb

  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
