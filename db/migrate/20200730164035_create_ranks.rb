class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.string :name
      t.timestamps
      t.integer :rank_will
      t.integer :rank_health
      t.integer :rank_circles
      t.integer :rank_resources
    end
  end
end
