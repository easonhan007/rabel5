class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :key
      t.string :title
      t.text :content
      t.boolean :published, default: false
      t.integer :position

      t.timestamps
    end
  end
end
