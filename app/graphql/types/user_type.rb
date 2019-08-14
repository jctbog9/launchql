module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :pets, [PetType], null: false
  end
end