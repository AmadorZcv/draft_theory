defmodule DraftTheory.Draft.Rating do
  use Ecto.Schema
  import Ecto.Changeset
  alias DraftTheory.Draft.Champion

  schema "ratings" do
    field :rating, :integer
    field :type, :integer
    belongs_to :champion, Champion

    timestamps()
  end

  @doc false
  def changeset(rating, attrs) do
    rating
    |> cast(attrs, [:type, :rating, :champion_id])
    |> validate_required([:type, :rating, :champion_id])
  end
end
