class AddFieldsToMobilityAssessmentsThree < ActiveRecord::Migration[5.1]
  def change
    add_column :mobility_assessments, :transfer_recommendation, :string
    add_column :mobility_assessments, :locomotion_recommendation, :string
  end
end
