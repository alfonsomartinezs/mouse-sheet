class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :character, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
