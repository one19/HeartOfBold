class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.float :damage
      t.float :fire_rate
      t.integer :clip_size
      t.float :reload_time
      t.float :proj_size
      t.float :proj_speed
      t.integer :proj_distance
      t.integer :proj_number
      t.integer :proj_spread
      t.text :functions
      t.text :sprite
      t.text :sprite_firing
      t.text :sprite_reload

      t.timestamps null: false
    end
  end
end
