class CreateFollowings < ActiveRecord::Migration[5.1]
  def change
    create_table :followings do |t|
      t.references :user, foreign_key: true
      t.integer :followed_user_id

      t.timestamps
    end
  end
end
