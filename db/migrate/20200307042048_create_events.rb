class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :customer_id, null: false
      t.integer :facility_id, null: false
      t.boolean :title, null: false, default: "ture"
      t.integer :people,null: false
      t.integer :start_at,null: false
      t.integer :end_at,null: false
      t.timestamps
    end
  end
end
