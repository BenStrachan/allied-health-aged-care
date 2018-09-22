class App::PostFallAssessmentsController < ApplicationController
  layout 'admin'
  before_action :set_post_fall_assessment, only: [:show, :edit, :update, :destroy, :contacts, :appointments, :progress_notes, :letters, :diagnosis_paragraphs, :incidents, :care_plans, :activities, :tasks, :attachments, :sonas]

  # GET /post_fall_assessments
  # GET /post_fall_assessments.json
  def index
    @post_fall_assessment = current_business.post_fall_assessments.order(created_at: :asc).paginate(:page => params[:page])
  end

  # GET /post_fall_assessments/1
  # GET /post_fall_assessments/1.json
  def show
  end

  # GET /post_fall_assessments/new
  def new
    @post_fall_assessment = current_business.post_fall_assessments.new
  end

  # GET /post_fall_assessments/1/edit
  def edit
  end

  # POST /post_fall_assessments
  # POST /post_fall_assessments.json
  def create
    @post_fall_assessment = current_business.post_fall_assessments.new(post_fall_assessment_params)
    @post_fall_assessment.author_id = current_user.id

    respond_to do |format|
      if @post_fall_assessment.save
        format.html { redirect_to app_post_fall_assessments_path, notice: 'PostFallAssessment was successfully created.' }
        format.json { render :show, status: :created, location: @post_fall_assessment }
      else
        format.html { render :new }
        format.json { render json: @post_fall_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_fall_assessments/1
  # PATCH/PUT /post_fall_assessments/1.json
  def update
    @post_fall_assessment.author_id = current_user.id

    respond_to do |format|
      if @post_fall_assessment.update(post_fall_assessment_params)
        format.html { redirect_to app_post_fall_assessments_path, notice: 'PostFallAssessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_fall_assessment }
      else
        format.html { render :edit }
        format.json { render json: @post_fall_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_fall_assessments/1
  # DELETE /post_fall_assessments/1.json
  def destroy
    @post_fall_assessment.destroy
    respond_to do |format|
      format.html { redirect_to app_post_fall_assessments_path, notice: 'PostFallAssessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_fall_assessment
      @post_fall_assessment = current_business.post_fall_assessments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_fall_assessment_params
      params.require(:post_fall_assessment).permit(:date, :business_id, :author_id, :resident_id)
    end
end
