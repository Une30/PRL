class Profile < ActiveRecord::Base
	belongs_to :user, {:foreign_key => "user_id"}
  has_many :publishers, :dependent => :destroy
  has_many :publications, :through => :publishers

  has_many :activities, :dependent => :destroy
  has_many :projects, :through => :activities

	has_attached_file :avatar
                    
  #, :styles => { :medium => "140x140>", :thumb => "50x50>", :large => "500x500>" }, :default_url => "missing.png", :processor =>[:cropper]
  #	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  #	attr_accessor :crop_x, :crop_y, :crop_w, :crop_h, :ratio, :caller
  #	after_update :reprocess_avatar, :if => :cropping? 
  #	
  #	def cropping? 
  #		!crop_x.blank?&&!crop_y.blank?&&!crop_w.blank?&&!crop_h.blank? 
  #	end

  #	def avatar_geometry(style = :original)
  #		@geometry ||= {}
  #		@geometry[style] ||=paperclip::Geometry.from_file(avatar.path(style))
  #	end
  
  #	private def reprocess_avatar
  #		avatar.assign(avatar)
  #		avatar.save
  #	end
end
