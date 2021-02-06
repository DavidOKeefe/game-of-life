class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
