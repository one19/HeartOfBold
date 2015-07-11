class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.float :exp
      t.float :hp
      t.float :hp_regen
      t.float :power
      t.float :power_regen
      t.float :speed
      t.integer :size
      t.string :move_type
      t.string :element
      t.text :color_schema
      t.text :emblem
      t.text :functions
      t.text :sprite
      t.text :sprite_idle
      t.text :sprite_death
      t.text :sprite_hat
      t.text :sprite_jacket
      t.text :sprite_shoes
      t.text :sprite_scarf
      t.integer :user_id
      t.integer :prime_gun_id
      t.integer :secondary_gun_id
      t.integer :prime_ability_id
      t.integer :secondary_ability_id

      t.timestamps null: false
    end
  end
end
