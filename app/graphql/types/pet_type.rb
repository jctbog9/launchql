module Types
  class PetType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :species, String, null: false
  end
end