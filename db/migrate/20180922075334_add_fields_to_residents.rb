class AddFieldsToResidents < ActiveRecord::Migration[5.1]
  def change
    add_column :residents, :diagnosis_summary, :string
    add_column :residents, :admission_date, :date
    add_column :residents, :permanent_resident_date, :date
    add_column :residents, :status, :string
  end
end
