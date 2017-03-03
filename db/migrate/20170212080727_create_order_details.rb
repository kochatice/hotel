class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
			t.integer  "product_id" # references -> posts
			t.decimal  "price" # references -> posts
		 
			t.decimal     "discount_price"
			t.decimal	"tax"
       t.timestamps
    end
  end
end
