class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all.order("username ASC")
    @directors = Profile.where('is_director = 1').order("username ASC")
    @assistants = Profile.where('is_assistant = 1').order("username ASC")
    @phd = Profile.where('is_phd = 1').order("phD_entrance_year DESC")
    @msc = Profile.where('is_msc = 1').order("MSc_entrance_year DESC")
    @bsc = Profile.where('is_bsc = 1').order("BSc_entrance_year DESC")
    @intern = Profile.where('is_intern = 1').order("guest_entrance_year DESC")
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      Rails.logger.info("PARAMS: #{profile_params}")
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }

      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|

      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:is_director, :is_assistant, :is_phd, :is_msc, :is_bsc, :is_intern, :username, :current_position, :email2, :website, :linked_in, :research_gate, :google_scholar, :phD_education, :MSc_education, :BSc_education, :phD_alumnus, :MSc_alumnus, :BSc_alumnus, :phD_thesis, :phD_thesis_desc, :MSc_thesis, :MSc_thesis_desc, :BSc_thesis, :BSc_thesis_desc, :entrance_year, :graduation_year, :isAdmin, :intern_title, :intern_desc, :intern_year, :avatar, :user_id, :phD_entrance_year, :phD_graduation_year, :MSc_entrance_year, :MSc_graduation_year, :BSc_entrance_year, :BSc_graduation_year, :guest_entrance_year, :guest_graduation_year, :guest_alumnus)
    end
end
