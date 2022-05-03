defmodule CrudJson.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :age, :integer
    field :name, :string
    field :email, :string
    field :admin, :boolean

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age, :email, :admin])
    |> validate_required([:name])
  end
end
