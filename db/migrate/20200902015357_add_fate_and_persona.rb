class AddFateAndPersona < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :fate,    :integer, default: 1
    add_column :characters, :persona, :integer, default: 1
  end
end
