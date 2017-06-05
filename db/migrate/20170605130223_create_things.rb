class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :gotdate
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.integer :location_id
      t.timestamps null: false
    end
  end
end
