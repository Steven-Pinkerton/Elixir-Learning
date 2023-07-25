defmodule Elixir-LearningWeb.HealthTest do
  use Elixir-LearningWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get(conn, "/health")

    assert response(conn, 200)
  end
end
