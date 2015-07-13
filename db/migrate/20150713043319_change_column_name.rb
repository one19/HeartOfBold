class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :guns, :length, :size
  end
end
