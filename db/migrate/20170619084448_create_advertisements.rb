class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|
      t.string :link
      t.string :title
      t.string :banner
      t.string :words
      t.date :start_date
      t.date :expire_date
      t.integer :duration

      t.timestamps
    end
  end
end
