class AbstractFile < ActiveRecord::Base

	belongs_to :project, :foreign_key => 'project_id'	

	has_attached_file :pdf
                    
end

