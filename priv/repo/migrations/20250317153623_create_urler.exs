defmodule Urler.Repo.Migrations.CreateUrler do
  use Ecto.Migration

  def change do
    create table(:urler) do
      add :key_url, :string
      add :value_url, :string
    end
  end
end
