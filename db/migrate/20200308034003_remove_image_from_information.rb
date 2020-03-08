class RemoveImageFromInformation < ActiveRecord::Migration[5.2]
  def change
    remove_column :information, :image, :text
  end
end
