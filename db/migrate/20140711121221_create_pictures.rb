class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.boolean :inslide
      t.integer :album_id
      t.text :caption
      
      t.timestamps
    end
  end
end
