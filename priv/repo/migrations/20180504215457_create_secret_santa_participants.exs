defmodule SecretSantaApi.Repo.Migrations.CreateSecretSantaParticipants do
  use Ecto.Migration

  def change do
    create table(:secret_santa_participants) do
      add :first_name, :string, null: false
      add :last_name, :string
      add :email, :string, null: false
      add :confirmed, :boolean, null: false, default: false
      add :host, :boolean, null: false, default: false

      add :secret_santa_party_id, references(:secret_santa_parties, on_delete: :nothing), null: false

      timestamps()
    end
  end
end
