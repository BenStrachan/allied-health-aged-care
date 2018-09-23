class AddColumnsToMobilityAssessments < ActiveRecord::Migration[5.1]
  def change
    add_column :mobility_assessments, :rolling_in_bed, :string
    add_column :mobility_assessments, :moving_up_bed, :string
    add_column :mobility_assessments, :lying_to_sit, :string
    add_column :mobility_assessments, :sit_to_stand, :string
    add_column :mobility_assessments, :bed_to_chair, :string
    add_column :mobility_assessments, :gait, :string
    add_column :mobility_assessments, :bathroom, :string
    add_column :mobility_assessments, :rolling_in_bed_comment, :string
    add_column :mobility_assessments, :moving_up_bed_comment, :string
    add_column :mobility_assessments, :lying_to_sit_comment, :string
    add_column :mobility_assessments, :sit_to_stand_comment, :string
    add_column :mobility_assessments, :bed_to_chair_comment, :string
    add_column :mobility_assessments, :gait_comment, :string
    add_column :mobility_assessments, :bathroom_comment, :string
  end
end
