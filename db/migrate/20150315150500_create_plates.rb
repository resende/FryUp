class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.text :image

      t.timestamps null: false
    end
  end
end
