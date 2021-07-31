class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :number, null: false, unique: true
      t.string :model, null: false
      t.integer :seats, null: false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
