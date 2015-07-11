class CreateBiomes < ActiveRecord::Migration
  def change
    create_table :biomes do |t|
      t.text :map_mat
      t.text :description
      t.string :name
      t.text :functions

      t.timestamps null: false
    end
  end
end
