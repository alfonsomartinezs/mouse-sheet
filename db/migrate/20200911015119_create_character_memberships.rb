class CreateCharacterMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :character_memberships do |t|
      t.references :character, foreign_key:true
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
