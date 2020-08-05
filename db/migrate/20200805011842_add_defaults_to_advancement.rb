class AddDefaultsToAdvancement < ActiveRecord::Migration[6.0]
  def change
    change_column :advancements, :passes, :integer, default: 0
    change_column :advancements, :fails, :integer, default: 0
    change_column :advancements, :level, :integer, default: 0
  end
end
