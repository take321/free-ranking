class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.string  :title,        null: false
      t.string  :text
      t.integer :category_id
      t.integer :user_id,      null: false
      t.timestamps
    end
  end
end
