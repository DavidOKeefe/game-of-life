class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
