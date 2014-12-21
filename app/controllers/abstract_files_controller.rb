class AbstractFilesController < ApplicationController
  before_action :set_abstract_file, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /abstract_files
  # GET /abstract_files.json
  def index
    @abstract_files = AbstractFile.all
  end

  # GET /abstract_files/1
  # GET /abstract_files/1.json
  def show
  end

  # GET /abstract_files/new
  def new
    @abstract_file = AbstractFile.new
  end

  # GET /abstract_files/1/edit
  def edit
  end

  # POST /abstract_files
  # POST /abstract_files.json
  def create
    @abstract_file = AbstractFile.new(abstract_file_params)

    respond_to do |format|
      if @abstract_file.save
        format.html { redirect_to @abstract_file, notice: 'Abstract file was successfully created.' }
        format.json { render :show, status: :created, location: @abstract_file }
      else
        format.html { render :new }
        format.json { render json: @abstract_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abstract_files/1
  # PATCH/PUT /abstract_files/1.json
  def update
    respond_to do |format|
      if @abstract_file.update(abstract_file_params)
        format.html { redirect_to @abstract_file, notice: 'Abstract file was successfully updated.' }
        format.json { render :show, status: :ok, location: @abstract_file }
      else
        format.html { render :edit }
        format.json { render json: @abstract_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abstract_files/1
  # DELETE /abstract_files/1.json
  def destroy
    @abstract_file.destroy
    respond_to do |format|
      format.html { redirect_to abstract_files_url, notice: 'Abstract file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abstract_file
      @abstract_file = AbstractFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abstract_file_params
      params.require(:abstract_file).permit(:project_id, :pdf)
    end
end
