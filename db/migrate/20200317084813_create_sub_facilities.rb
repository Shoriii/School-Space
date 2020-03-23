class CreateSubFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_facilities do |t|
      t.integer :category_id, null: false
      t.integer :facility_id, null: false
      t.string :sub_name, null: false
      t.string :sub_image_id,null: false
      t.string :sub_number,null: false
      t.boolean :use_status, null: false, default: "ture"
      t.text :body,null: false

      t.timestamps
    end
  end
end
