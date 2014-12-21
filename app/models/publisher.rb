class Publisher < ActiveRecord::Base
	belongs_to :publication  
	belongs_to :profile
end
