class AddAvatarColumnsToAbstractFile < ActiveRecord::Migration
   def self.up
    add_attachment :abstract_files, :pdf
  end

  def self.down
    remove_attachment :abstract_files, :pdf
  end
end