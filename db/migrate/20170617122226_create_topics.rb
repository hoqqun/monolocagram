class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string  :title
      t.text    :text
      t.string  :user_id
      t.string  :picture

      t.timestamps null: false
    end
  end
end
