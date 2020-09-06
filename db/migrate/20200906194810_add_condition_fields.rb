class AddConditionFields < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :is_sick,    :boolean, null: false, default: false
    add_column :characters, :is_hungry,  :boolean, null: false, default: false
    add_column :characters, :is_angry,   :boolean, null: false, default: false
    add_column :characters, :is_tired,   :boolean, null: false, default: false
    add_column :characters, :is_injured, :boolean, null: false, default: false

  end
end
