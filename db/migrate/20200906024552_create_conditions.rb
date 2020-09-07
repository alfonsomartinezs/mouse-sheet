class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :description
      t.string :consequence
      t.timestamps
    end
  end
end
