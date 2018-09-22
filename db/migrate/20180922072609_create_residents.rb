class CreateResidents < ActiveRecord::Migration[5.1]
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :room
      t.integer :author_id
      t.integer :business_id

      t.timestamps
    end
  end
end
