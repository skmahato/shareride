class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :source, null: false
      t.string :destination, null: false
      t.belongs_to :vehicle,  index: true
      t.belongs_to :user,  index: true
      t.boolean :available, null: false, default: true

      t.timestamps
    end
  end
end
