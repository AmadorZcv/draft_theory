defmodule DraftTheory.Draft.Rating do
  use Ecto.Schema
  import Ecto.Changeset

  schema "ratings" do
    field :rating, :integer
    field :type, :integer
    field :champion_id, :id

    timestamps()
  end

  @doc false
  def changeset(rating, attrs) do
    rating
    |> cast(attrs, [:type, :rating])
    |> validate_required([:type, :rating])
  end
end
