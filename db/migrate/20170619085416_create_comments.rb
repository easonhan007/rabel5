class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.string :commentable_type
      t.integer :commentable_id
      t.string :posting_device

      t.timestamps
    end
  end
end
