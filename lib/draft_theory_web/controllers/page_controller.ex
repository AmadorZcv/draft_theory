defmodule DraftTheoryWeb.PageController do
  use DraftTheoryWeb, :controller
  alias DraftTheory.Drafts

  def index(conn, _params) do
    champions = Drafts.get_champion_and_ratings()
    render(conn, "index.html", champions: champions)
  end
end
