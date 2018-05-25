defmodule SecretSantaApi.SecretSanta do

  import Ecto.{Query, Changeset}, warn: false
  alias SecretSantaApi.Repo

  # =================================================================
  # Party
  # =================================================================

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

  # =================================================================
  # Participant
  # =================================================================

  alias SecretSantaApi.SecretSanta.Participant

  def get_participant!(id), do: Repo.get!(Participant, id)

  def create_participant(attrs \\ %{}) do
    %Participant{}
    |> participant_changeset(attrs)
    |> Repo.insert
  end

  defp participant_changeset(%Participant{} = participant, attrs) do
    participant
    |> cast(attrs, [:first_name, :last_name, :email, :confirmed, :host, :secret_santa_party_id])
    |> validate_required([:first_name, :email])
    |> assoc_constraint(:secret_santa_party)
  end

end
