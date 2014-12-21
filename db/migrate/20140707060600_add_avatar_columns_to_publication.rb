class AddAvatarColumnsToPublication < ActiveRecord::Migration
   def self.up
    add_attachment :publications, :avatar
  end

  def self.down
    remove_attachment :publications, :avatar
  end
end