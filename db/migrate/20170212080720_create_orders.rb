class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
		t.integer  "user_id" # references -> posts
		t.decimal  "total" # references -> posts
		t.datetime   "order_date"
		t.boolean     "is_delivery",  null: false, default: false
		t.decimal     "ship_price" #active or deleted 
		t.boolean     "is_paid",  null: false, default: false
      t.timestamps
    end
  end
end
