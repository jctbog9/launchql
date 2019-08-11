require 'rails_helper'

RSpec.describe User, type: :model do
  describe('validations') do
    it('should create a valid user when required fields are complete') do
      user = create(:user)
      expect(user.save).to be(true)
    end

    it('should not create a user if require fields are blank') do
      blank_fields = [:email, :first_name, :last_name]
      blank_fields.each do |field|
        user = create(:user)
        user[field] = ""
        user.valid?
        expect(user.errors.messages[field]).to include("can't be blank")
      end
    end
  end

  describe('associations') do
    it('should return any pets associated with a user when .pets is called') do
      user = create(:user)
      5.times do
        create(:pet, user_id: user.id)
      end
      pets = user.pets
      expect(pets.length).to eq(5)
    end
  end
end
