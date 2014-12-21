class Publication < ActiveRecord::Base
	has_many :publishers, :dependent => :destroy  
	has_many :profiles, :through => :publishers
	has_attached_file :avatar


  attr_writer :profile_names
  after_save :assign_profiles

  def profile_names
    @profile_names || profiles.map(&:username).join(' ')
  end

  private

  def assign_profiles
    if @profile_names
      self.profiles = @profile_names.split(/\#/).map do |name|
        if name[0..0]==" "
          name=name.strip
        end
        name=name.downcase
        Profile.find_by_username(name)
      end
    end

end
end
