defmodule SecretSantaApiWeb.PartyController do
  use SecretSantaApiWeb, :controller

  def show(conn, %{"id" => id}) do
    party = SecretSantaApi.SecretSanta.get_party!(id)
    json(conn, party)
  end

  def create(conn, params) do
    party = SecretSantaApi.SecretSanta.create_party(params)
    json(conn, party)
  end
end
