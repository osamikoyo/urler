defmodule Urler.Router do
  use Plug.Router

  get "/urls/watch" do
    urs = Urler.Repo.all()
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, JasonV.encode!(urs))
  end

  post "urls/add" do
    {:ok, body, conn} = conn |> read_body()

    attrs = JasonV.decode!(body)

    changeset = Urler.Url.changeset(%Urler.Url{}, attrs)

    case Urler.Repo.insert(changeset) do
      {:ok, url} ->
        conn
        |> put_resp_content_type("text/plain")
        |> send_resp(200, "ok")
      {:error, _} ->
        conn
        |> put_resp_content_type("text/plain")
        |> send_resp(400, "cant insert url")
    end


  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
