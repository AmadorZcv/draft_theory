defmodule DraftTheory.Helpers.Text do
  def champion_name_to_riot_name(champion_name) do
    case champion_name do
      "Kog'Maw" ->
        "KogMaw"

      "Rek'Sai" ->
        "RekSai"

      "Wukong" ->
        "MonkeyKing"

      "Vel'Koz" ->
        "Velkoz"

      "Kha'Zix" ->
        "Khazix"

      "Cho'Gath" ->
        "Chogath"

      "Dr. Mundo" ->
        "DrMundo"

      "Kai'Sa" ->
        "Kaisa"

      other ->
        other
        |> String.split()
        |> Enum.join()
    end
  end
end
