class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.references :event, index: true
      t.references :customer, index: true
      t.references :admin, index: true
      t.timestamps
    end
  end
end
