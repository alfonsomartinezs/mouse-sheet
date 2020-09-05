class AddTraitDescription < ActiveRecord::Migration[6.0]
  def change
    add_column :traits, :description, :string, default: "¯\_(ツ)_/¯"
  end
end
