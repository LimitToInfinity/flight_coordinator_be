class CreateShuttles < ActiveRecord::Migration[7.1]
  def change
    create_table :shuttles do |t|
      t.datetime :datetime
      t.string :datetime_string

      t.timestamps
    end
  end
end
