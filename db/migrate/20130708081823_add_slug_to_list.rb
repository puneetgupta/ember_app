class AddSlugToList < ActiveRecord::Migration
  def change
    add_column :lists, :category_slug, :string
  end
end
