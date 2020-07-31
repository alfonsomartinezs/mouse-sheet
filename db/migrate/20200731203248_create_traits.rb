class CreateTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :traits do |t|
      t.belongs_to :character
      t.string :name
      t.timestamps
    end
  end
end
