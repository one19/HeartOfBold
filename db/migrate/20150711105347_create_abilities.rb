class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.float :power_mod
      t.text :context
      t.text :functions
      t.string :sprite

      t.timestamps null: false
    end
  end
end
