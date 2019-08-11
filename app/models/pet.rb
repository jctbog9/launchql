class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :adopted_at, presence: true

  belongs_to :owner, class_name: "User", foreign_key: "user_id"
end