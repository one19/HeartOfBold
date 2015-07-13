class CreateCharacterTitles < ActiveRecord::Migration
  def change
    create_table :characters_titles, id: false do |t|
      t.integer :character_id
      t.integer :title_id
    end
  end
end
