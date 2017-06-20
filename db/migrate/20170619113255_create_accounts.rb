class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.string :personal_website
      t.string :location
      t.string :signature
      t.text :introduction
      t.string :weibo_link

      t.timestamps
    end
  end
end
