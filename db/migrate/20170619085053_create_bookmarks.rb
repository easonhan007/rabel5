class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.string :bookmarkable_type
      t.integer :bookmarkable_id

      t.timestamps
    end
  end
end
