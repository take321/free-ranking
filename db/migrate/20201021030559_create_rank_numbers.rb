class CreateRankNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :rank_numbers do |t|
      t.integer :rank_number_id,  null: false
      t.string :rank_title,            null: false
      t.string :rank_text
      t.integer :rank_id
      t.timestamps
    end
  end
end
