class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :caption
      t.date :year

      t.timestamps
    end
  end
end
