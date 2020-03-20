class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :facility_name, null: false
      t.text :address, null: false
      t.string :facility_phone, null: false
      t.string :date, null: false
      t.string :lending_time, null: false
      t.string :facility_image_id, null: false
      t.boolean :use_status, null: false, default: "ture"
      t.text :introduction, null: false
      t.timestamps
    end
  end
end
