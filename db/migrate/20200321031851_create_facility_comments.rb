class CreateFacilityComments < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_comments do |t|
      t.integer :customer_id
      t.integer :facility_id
      t.string :comment
      t.float :rate
      t.timestamps
    end
  end
end
