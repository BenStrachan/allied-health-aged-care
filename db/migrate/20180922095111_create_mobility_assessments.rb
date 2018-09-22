class CreateMobilityAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :mobility_assessments do |t|
      t.date :date
      t.timestamps
    end
  end
end
