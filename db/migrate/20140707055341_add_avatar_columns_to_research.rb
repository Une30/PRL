class AddAvatarColumnsToResearch < ActiveRecord::Migration
   def self.up
    add_attachment :researches, :avatar
  end

  def self.down
    remove_attachment :researches, :avatar
  end
end