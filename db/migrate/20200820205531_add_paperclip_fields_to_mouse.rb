class AddPaperclipFieldsToMouse < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :image_file_name, :string
    add_column :characters, :image_content_type, :string 
    add_column :characters, :image_file_size, :integer 
    add_column :characters, :image_updated_at, :datetime 
  end
end
