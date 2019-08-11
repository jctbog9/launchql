require 'rails_helper'

RSpec.describe Pet, type: :model do
  let!(:user) { create(:user) }

  describe('validations') do
    it('should create a valid pet when required fields are complete') do
      pet = create(:pet, user_id: user.id)
      expect(pet.save).to be(true)
    end

    it('should not create a user if require fields are blank') do
      blank_fields = [:name, :species, :age, :adopted_at]
      blank_fields.each do |field|
        pet = create(:pet, user_id: user.id)
        pet[field] = ""
        pet.valid?
        expect(pet.errors.messages[field]).to include("can't be blank")
      end
    end
  end

  describe('associations') do
    it('should return an associated owner when .owner is called') do
      pet = create(:pet, user_id: user.id)
      expect(pet.owner).to eq(user)
    end
  end
end