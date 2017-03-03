class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
		t.string  "category_id" # references -> posts
		 t.string  "title" # references -> posts
    t.string   "description"
    t.decimal     "price" #active or deleted
        t.decimal     "discount_price" #active or deleted 
      t.timestamps
    end
  end
end
