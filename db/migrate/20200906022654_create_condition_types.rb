class CreateConditionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :condition_types do |t|
      t.string :name
      t.string :description
      t.string :consequence
      t.timestamps
    end
  end
end
