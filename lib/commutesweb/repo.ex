defmodule Commutesweb.Repo do
  use Ecto.Repo,
    otp_app: :commutesweb,
    adapter: Ecto.Adapters.Postgres
end
