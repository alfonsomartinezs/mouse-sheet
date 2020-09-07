class AddPrivacyField < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :private, :boolean, null: false, default: false
  end
end
