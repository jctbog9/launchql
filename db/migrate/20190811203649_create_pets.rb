class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.integer :age, null: false
      t.date :adopted_at, default: Date.new

      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
