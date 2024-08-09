class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
