class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.timestamps
    end

    add_index :games, :name
  end
end
