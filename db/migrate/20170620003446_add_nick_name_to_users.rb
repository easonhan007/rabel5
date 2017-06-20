class AddNickNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :avatar, :string
    add_column :users, :role, :string
    add_column :users, :blocked, :boolean, default: false
    add_column :users, :reward, :integer, default: 0
  end
end
