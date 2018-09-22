class App::PainAssessmentsController < ApplicationController
  layout 'admin'
  before_action :set_pain_assessment, only: [:show, :edit, :update, :destroy, :contacts, :appointments, :progress_notes, :letters, :diagnosis_paragraphs, :incidents, :care_plans, :activities, :tasks, :attachments, :sonas]

  # GET /pain_assessments
  # GET /pain_assessments.json
  def index
    @pain_assessment = current_business.pain_assessments.order(created_at: :asc).paginate(:page => params[:page])
  end

  # GET /pain_assessments/1
  # GET /pain_assessments/1.json
  def show
  end

  # GET /pain_assessments/new
  def new
    @pain_assessment = current_business.pain_assessments.new
  end

  # GET /pain_assessments/1/edit
  def edit
  end

  # POST /pain_assessments
  # POST /pain_assessments.json
  def create
    @pain_assessment = current_business.pain_assessments.new(pain_assessment_params)
    @pain_assessment.author_id = current_user.id

    respond_to do |format|
      if @pain_assessment.save
        format.html { redirect_to app_pain_assessments_path, notice: 'PainAssessment was successfully created.' }
        format.json { render :show, status: :created, location: @pain_assessment }
      else
        format.html { render :new }
        format.json { render json: @pain_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pain_assessments/1
  # PATCH/PUT /pain_assessments/1.json
  def update
    @pain_assessment.author_id = current_user.id

    respond_to do |format|
      if @pain_assessment.update(pain_assessment_params)
        format.html { redirect_to app_pain_assessments_path, notice: 'PainAssessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pain_assessment }
      else
        format.html { render :edit }
        format.json { render json: @pain_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pain_assessments/1
  # DELETE /pain_assessments/1.json
  def destroy
    @pain_assessment.destroy
    respond_to do |format|
      format.html { redirect_to app_pain_assessments_path, notice: 'PainAssessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain_assessment
      @pain_assessment = current_business.pain_assessments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pain_assessment_params
      params.require(:pain_assessment).permit(:date, :business_id, :author_id)
    end
end
