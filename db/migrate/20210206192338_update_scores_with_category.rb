class UpdateScoresWithCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :scores, :category, foreign_key: true, null: false
    add_index :scores, [:category_id, :game_id], unique: true
  end
end
