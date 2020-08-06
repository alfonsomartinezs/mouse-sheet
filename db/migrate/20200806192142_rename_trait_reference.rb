class RenameTraitReference < ActiveRecord::Migration[6.0]
  def change
    remove_column :trait_advancements, :mousetrait_id, :integer
    add_column :trait_advancements, :trait_id, :integer
  end
end
