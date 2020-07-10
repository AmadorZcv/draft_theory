defmodule DraftTheory.Drafts do
  import Ecto.Query, warn: false
  alias DraftTheory.Repo
  alias DraftTheory.Draft.{Champion}
  alias DraftTheory.Helpers

  def get_champion_and_ratings() do
    Repo.all(from(p in Champion, preload: :ratings))
    |> Enum.map(fn %{ratings: ratings} = champion ->
      Enum.reduce(ratings, Map.from_struct(champion), fn %{type: type, rating: rating}, acc ->
        key = Helpers.Text.rating_type_to_atom(type)
        Map.put(acc, key, rating)
      end)
    end)
  end
end
