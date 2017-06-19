class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :key
      t.string :introduction
      t.text :custom_html
      t.integer :position
      t.integer :topics_count
      t.boolean :quiet
      t.text :custom_css

      t.timestamps
    end
  end
end
