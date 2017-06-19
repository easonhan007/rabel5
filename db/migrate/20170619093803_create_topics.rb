class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.references :node, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.integer :hit
      t.datetime :involved_at
      t.integer :comments_count, default: 0
      t.boolean :comments_closed, default: false
      t.boolean :sticky, default: false
      t.string :last_replied_by, default: ""
      t.datetime :last_replied_at

      t.timestamps
    end
  end
end
