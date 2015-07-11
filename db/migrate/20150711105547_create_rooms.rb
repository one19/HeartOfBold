class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :orientation
      t.integer :size
      t.text :functions
      t.text :sprite
      t.integer :biome_id

      t.timestamps null: false
    end
  end
end
