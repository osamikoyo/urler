defmodule Urler.Url do
  use Ecto.Schema
  import Ecto.Changeset

  schema "urler" do
    field :key_url, :string
    field :value_url, :string
  end

  def changeset(url, attrs) do
    url
    |> cast(attrs, [:key_url, :value_url])
    |> validate_required([:key_url, :value_url])
  end

end
