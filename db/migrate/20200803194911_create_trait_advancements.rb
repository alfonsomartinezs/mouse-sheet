class CreateTraitAdvancements < ActiveRecord::Migration[6.0]
  def change
    create_table :trait_advancements do |t|
      t.references :character, null: false, foreign_key: true
      t.references :trait, null: false, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
