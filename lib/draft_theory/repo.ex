defmodule DraftTheory.Repo do
  use Ecto.Repo,
    otp_app: :draft_theory,
    adapter: Ecto.Adapters.Postgres
end
