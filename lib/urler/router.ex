defmodule Urler.Router do
  use Plug.Router

  match _ do
    send_resp(conn, 404, "not found")
  end
end
