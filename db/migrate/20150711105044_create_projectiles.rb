class CreateProjectiles < ActiveRecord::Migration
  def change
    create_table :projectiles do |t|
      t.string :name
      t.text :description
      t.string :element
      t.text :functions
      t.text :sprite
      t.text :sprite_start
      t.text :sprite_finish

      t.timestamps null: false
    end
  end
end
