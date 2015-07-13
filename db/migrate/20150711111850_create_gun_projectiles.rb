class CreateGunProjectiles < ActiveRecord::Migration
  def change
    create_table :guns_projectiles, id: false do |t|
      t.integer :gun_id
      t.integer :projectile_id
    end
  end
end
