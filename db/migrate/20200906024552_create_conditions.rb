class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.references :condition_type, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.timestamps
    end
  end
end
