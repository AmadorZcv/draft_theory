defmodule DraftTheory.Helpers.Rating do
  # A: 93-100
  # A-: 90-92
  # B+: 87-89
  # B: 83-86
  # B-: 80-82
  # C+: 77-79
  # C: 73-76
  # C-: 70-72
  # D+: 67-69
  # D: 63-66
  # D-: 60-62
  # F: Below 60
  def letter_to_integer(letter_rating) do
    case letter_rating do
      "A-" ->
        90

      "A" ->
        95

      "A" <> _plus ->
        100

      "B+" ->
        89

      "B-" ->
        80

      "B" ->
        85

      "C-" ->
        70

      "C+" ->
        79

      "C" ->
        75

      "D-" ->
        60

      "D+" ->
        69

      "D" ->
        65

      "F" ->
        50
    end
  end
end
