defmodule SecretSantaApi.SecretSanta.Party do
  use Ecto.Schema

  # Strips values from the struct before passing to Poison.Encoder to convert to
  # JSON. Poison.Encoder is unable to parse private values such as __meta__.
  # Also using this as a serializer to strip values that the end user should not
  # see.
  @derive {Poison.Encoder,
    except: [:__meta__, :passphrase, :inserted_at, :updated_at]}
  schema "secret_santa_parties" do
    field :name, :string
    field :theme, :string
    field :spending_limit, :integer
    field :passphrase, :string
    field :date, :naive_datetime
    field :location, :string

    timestamps()
  end
end
