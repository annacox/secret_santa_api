defmodule SecretSantaApi.SecretSanta do
  
  import Ecto.{Query, Changeset}, warn: false
  alias SecretSantaApi.Repo

  alias SecretSantaApi.SecretSanta.Party

  def get_party!(id), do: Repo.get!(Party, id)

  def create_party(attrs \\ %{}) do
    %Party{}
    |> party_changeset(attrs)
    |> Repo.insert()
  end

  defp party_changeset(%Party{} = party, attrs) do
    party
    |> cast(attrs, [:name, :theme, :spending_limit, :passphrase, :date, :location])
    |> validate_required([:name])
  end

end
