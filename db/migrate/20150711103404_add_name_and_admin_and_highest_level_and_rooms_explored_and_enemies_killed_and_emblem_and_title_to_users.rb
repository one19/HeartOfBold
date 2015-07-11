class AddNameAndAdminAndHighestLevelAndRoomsExploredAndEnemiesKilledAndEmblemAndTitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean
    add_column :users, :highest_level, :integer
    add_column :users, :rooms_explored, :float
    add_column :users, :enemies_killed, :float
    add_column :users, :emblem, :text
    add_column :users, :title, :string
  end
end
