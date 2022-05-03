defmodule CrudJson.Repo do
  use Ecto.Repo,
    otp_app: :crud_json,
    adapter: Ecto.Adapters.Postgres
end
