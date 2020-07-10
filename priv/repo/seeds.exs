# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DraftTheory.Repo.insert!(%DraftTheory.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias DraftTheory.Repo
alias DraftTheory.Draft.{Champion, Rating}
alias DraftTheory.Helpers

File.stream!("ratings_source_randomonium.csv")
|> CSV.decode!()
# Dropping info rows
|> Enum.drop(8)
# Example Row ["Champion", "Class", "Video", "Attack", "Catch", "Protect", "Siege", "Split", "", "Specialization"]
|> Enum.map(fn [
                 name,
                 _class,
                 _video,
                 attack,
                 pickoff,
                 protect,
                 siege,
                 split,
                 _something?,
                 specialization
               ] ->
  %{id: champion_id} =
    Champion.changeset(%Champion{}, %{
      icon_path: "champion_icons/" <> Helpers.Text.champion_name_to_riot_name(name),
      name: name
    })
    |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 1,
    rating: Helpers.Rating.letter_to_integer(attack)
  })
  |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 2,
    rating: Helpers.Rating.letter_to_integer(pickoff)
  })
  |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 3,
    rating: Helpers.Rating.letter_to_integer(protect)
  })
  |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 4,
    rating: Helpers.Rating.letter_to_integer(siege)
  })
  |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 5,
    rating: Helpers.Rating.letter_to_integer(split)
  })
  |> Repo.insert!()

  Rating.changeset(%Rating{}, %{
    champion_id: champion_id,
    type: 6,
    rating: specialization
  })
  |> Repo.insert!()
end)
