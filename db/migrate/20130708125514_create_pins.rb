class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :category_name
      t.string :image

      t.timestamps
    end
  end
end
