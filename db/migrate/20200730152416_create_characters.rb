class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.string     :name, presence: true
      t.integer    :age
      t.string     :home
      t.string     :fur_color
      t.string     :rank 
      t.string     :cloak_color
      t.string     :parents
      t.string     :senior_artisan
      t.string     :mentor
      t.string     :friend
      t.string     :enemy

      t.timestamps
    end
  end
end
