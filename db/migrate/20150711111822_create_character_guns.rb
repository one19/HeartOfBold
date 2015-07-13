class CreateCharacterGuns < ActiveRecord::Migration
  def change
    create_table :characters_guns, id: false do |t|
      t.integer :character_id
      t.integer :gun_id
    end
  end
end
