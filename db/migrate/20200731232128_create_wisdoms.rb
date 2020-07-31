class CreateWisdoms < ActiveRecord::Migration[6.0]
  def change
    create_table :wisdoms do |t|
      t.references :wise, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
