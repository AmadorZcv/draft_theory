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

      "LeBlanc" ->
        "Leblanc"

      other ->
        other
        |> String.split()
        |> Enum.join()
    end
  end

  def rating_type_to_atom(rating_type) do
    case rating_type do
      1 ->
        :attack

      2 ->
        :pickoff

      3 ->
        :protect

      4 ->
        :siege

      5 ->
        :split

      6 ->
        :specialization
    end
  end
end
