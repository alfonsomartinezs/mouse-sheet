class CreateAdvancements < ActiveRecord::Migration[6.0]
  def change
    create_table :advancements do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.string :name
      t.integer :passes
      t.integer :fails
      t.integer :level

      t.timestamps
    end
  end
end
