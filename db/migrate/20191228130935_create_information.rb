class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string      :name
      t.text        :text
      t.text        :image
      t.text        :position
      t.timestamps null: true
    end
  end
end
