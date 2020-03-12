defmodule CommuteswebWeb.PageController do
  use CommuteswebWeb, :controller
  alias Commutesweb.{Repo, Stop}

  def index(conn, _params) do
    stops = Repo.all(Stop)
    |> Repo.preload([:departures])
    conn
    |> assign(:stops, stops)
    |> render("index.html")
  end
end
