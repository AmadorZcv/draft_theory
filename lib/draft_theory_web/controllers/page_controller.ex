defmodule DraftTheoryWeb.PageController do
  use DraftTheoryWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
