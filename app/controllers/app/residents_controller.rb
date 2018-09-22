class App::ResidentsController < ApplicationController
  layout 'admin'
  before_action :set_resident, only: [:show, :edit, :update, :destroy, :contacts, :appointments, :progress_notes, :letters, :diagnosis_paragraphs, :incidents, :care_plans, :activities, :tasks, :attachments, :sonas]

  # GET /residents
  # GET /residents.json
  def index
    @resident = current_business.residents.order(last_name: :asc).paginate(:page => params[:page])
  end

  # GET /residents/1
  # GET /residents/1.json
  def show
  end

  # GET /residents/new
  def new
    @resident = current_business.residents.new
  end

  # GET /residents/1/edit
  def edit
  end

  # POST /residents
  # POST /residents.json
  def create
    @resident = current_business.residents.new(resident_params)
    @resident.author_id = current_user.id

    respond_to do |format|
      if @resident.save
        format.html { redirect_to app_residents_path, notice: 'Resident was successfully created.' }
        format.json { render :show, status: :created, location: @resident }
      else
        format.html { render :new }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residents/1
  # PATCH/PUT /residents/1.json
  def update
    @resident.author_id = current_user.id

    respond_to do |format|
      if @resident.update(resident_params)
        format.html { redirect_to app_residents_path, notice: 'Resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @resident }
      else
        format.html { render :edit }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residents/1
  # DELETE /residents/1.json
  def destroy
    @resident.destroy
    respond_to do |format|
      format.html { redirect_to app_residents_path, notice: 'Resident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = current_business.residents.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resident_params
      params.require(:resident).permit(:title, :first_name, :last_name, :date_of_birth, :room, :author_id, :business_id, :diagnosis_summary, :admission_date, :permanent_resident_date, :status)
    end
end
