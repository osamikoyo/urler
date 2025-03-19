import Config

config :urler, ecto_repos: [Urler.Repo]

config :urler, Urler.Repo,
  database: "priv/repo/storage.db",
  pool_size: 10
