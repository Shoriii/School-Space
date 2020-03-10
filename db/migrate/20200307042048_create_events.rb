class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :customer_id, null: false
      t.integer :facility_id, null: false
      t.boolean :title, null: false, default: "ture"
      t.string :people,null: false
      t.datetime :start_at,null: false
      t.datetime :end_at,null: false
      t.timestamps
    end
  end
end
