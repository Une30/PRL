class Picture < ActiveRecord::Base
	has_attached_file :avatar
	belongs_to :album, :foreign_key => 'album_id'	
end
