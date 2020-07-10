defmodule DraftTheory.Repo.Migrations.CreateChampions do
  use Ecto.Migration

  def change do
    create table(:champions) do
      add :name, :string
      add :icon_path, :string

      timestamps()
    end

  end
end
