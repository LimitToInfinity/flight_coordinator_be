class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :airport
      t.datetime :datetime
      t.string :datetime_string
      t.string :direction
      t.string :number
      t.references :traveler, null: false, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
