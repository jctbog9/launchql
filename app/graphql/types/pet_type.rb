module Types
  class PetType < BaseObject
    field :id, String, null: false
    field :age, String, null: false
    field :name, String, null: false
    field :species, String, null: false
    field :owner, Types::UserType, null: false
  end
end