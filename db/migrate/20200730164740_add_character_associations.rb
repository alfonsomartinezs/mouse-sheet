class AddCharacterAssociations < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :city, index: true
    add_reference :characters, :rank, index: true
  end
end
