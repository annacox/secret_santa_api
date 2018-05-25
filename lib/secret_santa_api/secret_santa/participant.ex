defmodule SecretSantaApi.SecretSanta.Participant do
  use Ecto.Schema
  alias SecretSantaApi.SecretSanta.Party

  schema "secret_santa_participants" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :confirmed, :boolean
    field :host, :boolean
    belongs_to :secret_santa_party, Party

    timestamps()
  end
end
