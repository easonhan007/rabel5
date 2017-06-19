class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.string :notifiable_type
      t.integer :notifiable_id
      t.text :content
      t.integer :action_user_id
      t.string :action
      t.boolean :unread, default: true

      t.timestamps
    end
  end
end
