class ChangeTraitsToWises < ActiveRecord::Migration[6.0]
  def change
    rename_table :traits, :wises
  end
end
