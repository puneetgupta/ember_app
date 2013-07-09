class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :category_name
      t.string :category_description

      t.timestamps
    end
  end
end
