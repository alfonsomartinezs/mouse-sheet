class AddAttributestToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :belief, :string
    add_column :characters, :goal, :string
    add_column :characters, :instinct, :string
    add_column :characters, :nature, :integer
    add_column :characters, :will, :integer
    add_column :characters, :health, :integer
    add_column :characters, :resources, :integer
    add_column :characters, :circles, :integer
  end
end
