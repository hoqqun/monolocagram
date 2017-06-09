class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|

      t.string :title
      t.string :content
      t.string :user_id
      t.string :picture
      t.timestamps null: false
    end
  end
end
