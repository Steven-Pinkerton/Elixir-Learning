defmodule Elixir-LearningWeb.PingTest do
  use Elixir-LearningWeb.ConnCase

  test "GET /ping", %{conn: conn} do
    conn = get(conn, "/ping")

    assert response(conn, 200)
  end
end
