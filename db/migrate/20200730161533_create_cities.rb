class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description
      t.string :skill_list
      t.string :trait_list
      t.timestamps
    end
  end
end
