class DropMouseTraits < ActiveRecord::Migration[6.0]
  def up
    drop_table :mouse_traits
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
