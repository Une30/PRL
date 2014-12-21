class AddAvatarColumnsToAlbum < ActiveRecord::Migration
   def self.up
    add_attachment :albums, :avatar
  end

  def self.down
    remove_attachment :albums, :avatar
  end
end