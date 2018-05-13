class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.decimal :long
      t.decimal :lat
      t.text :name
      t.integer :user_id

      t.timestamps
    end
  end
end
