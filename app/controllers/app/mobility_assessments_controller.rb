class App::MobilityAssessmentsController < ApplicationController
  layout 'admin'
  before_action :set_mobility_assessment, only: [:show, :edit, :update, :destroy, :contacts, :appointments, :progress_notes, :letters, :diagnosis_paragraphs, :incidents, :care_plans, :activities, :tasks, :attachments, :sonas]

  # GET /mobility_assessments
  # GET /mobility_assessments.json
  def index
    @mobility_assessment = current_business.mobility_assessments.order(created_at: :desc).paginate(:page => params[:page])
  end

  # GET /mobility_assessments/1
  # GET /mobility_assessments/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show",
        disposition: 'inline',
       :page_size => "A4",
        stream: false,
        layout: 'layouts/pdf.html.erb',
        viewport_size: '1280x1024'

      end
    end
  end

  # GET /mobility_assessments/new
  def new
    @mobility_assessment = current_business.mobility_assessments.new
  end

  # GET /mobility_assessments/1/edit
  def edit
  end

  # POST /mobility_assessments
  # POST /mobility_assessments.json
  def create
    @mobility_assessment = current_business.mobility_assessments.new(mobility_assessment_params)
    @mobility_assessment.author_id = current_user.id

    respond_to do |format|
      if @mobility_assessment.save
        format.html { redirect_to app_mobility_assessments_path, notice: 'MobilityAssessment was successfully created.' }
        format.json { render :show, status: :created, location: @mobility_assessment }
      else
        format.html { render :new }
        format.json { render json: @mobility_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobility_assessments/1
  # PATCH/PUT /mobility_assessments/1.json
  def update
    @mobility_assessment.author_id = current_user.id

    respond_to do |format|
      if @mobility_assessment.update(mobility_assessment_params)
        format.html { redirect_to app_mobility_assessments_path, notice: 'MobilityAssessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobility_assessment }
      else
        format.html { render :edit }
        format.json { render json: @mobility_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobility_assessments/1
  # DELETE /mobility_assessments/1.json
  def destroy
    @mobility_assessment.destroy
    respond_to do |format|
      format.html { redirect_to app_mobility_assessments_path, notice: 'MobilityAssessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobility_assessment
      @mobility_assessment = current_business.mobility_assessments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mobility_assessment_params
      params.require(:mobility_assessment).permit(:date, :business_id, :author_id, :resident_id,
                                              :rolling_in_bed,
                                              :moving_up_bed,
                                              :lying_to_sit,
                                              :sit_to_stand,
                                              :bed_to_chair,
                                              :gait,
                                              :bathroom,
                                              :rolling_in_bed_comment,
                                              :moving_up_bed_comment,
                                              :lying_to_sit_comment,
                                              :sit_to_stand_comment,
                                              :bed_to_chair_comment,
                                              :gait_comment,
                                              :bathroom_comment,
                                              :falls_history,
                                              :falls_history_comment,
                                              :berg_balance_result,
                                              :transfer_recommendation,
                                              :locomotion_recommendation)
    end
end
