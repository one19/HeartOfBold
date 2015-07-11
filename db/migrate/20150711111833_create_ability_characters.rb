class CreateAbilityCharacters < ActiveRecord::Migration
  def change
    create_table :ability_characters, id: false do |t|
      t.integer :ability_id
      t.integer :character_id
    end
  end
end
