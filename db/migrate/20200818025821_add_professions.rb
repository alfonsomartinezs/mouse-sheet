class AddProfessions < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :parent_profession, :string
    add_column :characters, :artisan_profession, :string
    add_column :characters, :mentor_profession, :string
  end
end
