class CreateWises < ActiveRecord::Migration[6.0]
  def change
    create_table :wises do |t|
      t.string :name
      t.timestamps
    end
  end
end
