class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.integer :admin_user_id
      t.references :user, foreign_key: true
      t.integer :amount
      t.integer :balance
      t.text :reason

      t.timestamps
    end
  end
end
