class CreatePainAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :pain_assessments do |t|
      t.date :date
      t.integer :business_id
      t.integer :author_id

      t.timestamps
    end
  end
end
