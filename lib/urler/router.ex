defmodule Urler.Router do
  use Plug.Router

  get "/urls/watch" do
    urs = Urler.Repo.all()
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, JasonV.encode!(urs))
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
