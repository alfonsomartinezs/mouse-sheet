class CreateUserMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :user_memberships do |t|
      t.boolean :admin, null: false, default: false
      t.boolean :approved, null: false, default: false
      t.references :member, references: :users, foreign_key: {to_table: :users}
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
