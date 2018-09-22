class AddFieldsToMobilityAssessments < ActiveRecord::Migration[5.1]
  def change
    add_column :mobility_assessments, :business_id, :integer, index: true
    add_column :mobility_assessments, :author_id, :integer, index: true
  end
end
