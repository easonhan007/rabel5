class CreateCaptchas < ActiveRecord::Migration[5.1]
  def change
    create_table :captchas do |t|
      t.string :key
      t.string :code

      t.timestamps
    end
  end
end
