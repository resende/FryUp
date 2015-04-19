class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :image
      t.integer :calories

      t.timestamps null: false
    end
  end
end
