class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
     t.string   "title"
    t.text     "description"
   
   
  t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"

      t.timestamps
    end
  end
end
