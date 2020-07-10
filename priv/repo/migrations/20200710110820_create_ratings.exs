defmodule DraftTheory.Repo.Migrations.CreateRatings do
  use Ecto.Migration

  def change do
    create table(:ratings) do
      add :type, :integer
      add :rating, :integer
      add :champion_id, references(:champions, on_delete: :nothing)

      timestamps()
    end

    create index(:ratings, [:champion_id])
  end
end
