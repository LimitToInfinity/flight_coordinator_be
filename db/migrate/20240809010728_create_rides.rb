class CreateRides < ActiveRecord::Migration[7.1]
  def change
    create_table :rides do |t|
      t.references :driver, null: false, foreign_key: { to_table: :people }, index: true
      t.references :traveler, null: false, foreign_key: { to_table: :people }
      t.references :flight, null: false, foreign_key: true
      t.references :shuttle, null: false, foreign_key: true

      t.timestamps
    end

    add_index :rides, %i[traveler_id driver_id flight_id], unique: true
    # add_index :rides, [:driver_id, :traveler_id] # , unique: true
  end
end
