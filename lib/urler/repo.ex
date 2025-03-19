defmodule Urler.Repo do
  use Ecto.Repo,
    otp_app: :urler,
    adapter: Ecto.Adapters.SQLite3
end
