class AddResidentIdToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :mobility_assessments, :resident_id, :integer , index: true
    add_column :pain_assessments, :resident_id, :integer , index: true
    add_column :post_fall_assessments, :resident_id, :integer , index: true
  end
end
