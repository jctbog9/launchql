module Types
  class QueryType < Types::BaseObject
    field :users, [UserType], null: false, description: "A query for all Users"
    
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
    
    field :pets, [PetType], null: false, description: "A field for querying all Pets"
    
    def pets
      Pet.all
    end

    field :pet, Types::PetType, null: false do
      argument :id, ID, required: true
    end

    def pet(id:)
      Pet.find(id)
    end
  end
end
