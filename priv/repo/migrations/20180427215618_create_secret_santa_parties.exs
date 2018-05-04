defmodule SecretSantaApi.Repo.Migrations.CreateSecretSantaParties do
  use Ecto.Migration

  def change do
    create table(:secret_santa_parties) do
      add :name, :string, null: false
      add :theme, :string
      add :spending_limit, :integer
      add :passphrase, :string
      add :date, :naive_datetime
      add :location, :string

      timestamps()
  end
end
