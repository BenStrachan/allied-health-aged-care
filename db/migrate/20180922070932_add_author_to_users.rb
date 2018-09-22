class AddAuthorToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :author_id, :integer , index: true
  end
end
