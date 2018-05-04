defmodule SecretSantaApi.SecretSanta.Party do
  use Ecto.Schema

  schema "secret_santa_parties" do
    field :name, :string
    field :theme, :string
    field :spending_limit, :integer
    field :passphrase, :string
    field :date, :naive_datetime
    field :location, :string
  end
end
