defmodule Elixir-Learning.Factory do
  use ExMachina.Ecto, repo: Elixir-Learning.Repo

  # This is a sample factory to make sure our setup is working correctly.
  def name_factory(_) do
    Faker.Person.name()
  end
end
