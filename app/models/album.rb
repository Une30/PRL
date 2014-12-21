class Album < ActiveRecord::Base
	has_attached_file :avatar
	has_many :pictures, :dependent => :destroy
	#accepts_nested_attributes_for :pictures
end
