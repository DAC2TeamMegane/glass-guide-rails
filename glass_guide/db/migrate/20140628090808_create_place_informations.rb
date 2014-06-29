class CreatePlaceInformations < ActiveRecord::Migration
  def change
    create_table :place_informations do |t|
      t.string :name
      t.text :description
      t.text :url
      t.text :icon_url
      t.integer :beacon_data1
      t.integer :beacon_data2

      t.timestamps
    end
  end
end
