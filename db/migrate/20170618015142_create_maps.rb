class CreateMaps < ActiveRecord::Migration[5.1.1]
  def change
    create_table :maps do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
