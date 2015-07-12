class RemoveContextFromAbility < ActiveRecord::Migration
  def change
    remove_column :abilities, :context, :text
  end
end
