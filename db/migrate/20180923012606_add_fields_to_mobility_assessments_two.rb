class AddFieldsToMobilityAssessmentsTwo < ActiveRecord::Migration[5.1]
  def change
    add_column :mobility_assessments, :falls_history, :string
    add_column :mobility_assessments, :falls_history_comment, :string
    add_column :mobility_assessments, :berg_balance_result, :string

  end
end
