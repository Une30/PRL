class Activity < ActiveRecord::Base
	belongs_to :project
	belongs_to :profile
end
