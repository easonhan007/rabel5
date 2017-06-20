class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :var
      t.text :value
      t.integer :thing_id
      t.string :thing_type
    end
  end
end
