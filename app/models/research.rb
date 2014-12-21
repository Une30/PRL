class Research < ActiveRecord::Base
	has_many :projects
	has_attached_file :avatar
end
