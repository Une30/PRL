class AlumniController < ApplicationController
  def index
  	@phd_alum = Profile.where('phD_alumnus = 1').order("phD_graduation_year DESC")
  	@msc_alum = Profile.where('MSc_alumnus = 1').order("MSc_graduation_year DESC")
  	@bsc_alum = Profile.where('BSc_alumnus = 1').order("BSc_graduation_year DESC")
  	@guest_alum = Profile.where('guest_alumnus = 1').order("guest_graduation_year DESC")
  end
end
