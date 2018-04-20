defmodule SecretSantaApiWeb.PageController do
  use SecretSantaApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
