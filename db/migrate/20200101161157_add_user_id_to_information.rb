class AddUserIdToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :user_id, :integer
    add_column :information, :title, :text
  end
end
