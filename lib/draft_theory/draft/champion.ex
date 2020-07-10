defmodule DraftTheory.Draft.Champion do
  use Ecto.Schema
  import Ecto.Changeset
  alias DraftTheory.Draft.Rating

  schema "champions" do
    field :icon_path, :string
    field :name, :string
    has_many :ratings, Rating
    timestamps()
  end

  @doc false
  def changeset(champion, attrs) do
    champion
    |> cast(attrs, [:name, :icon_path])
    |> validate_required([:name, :icon_path])
  end
end
