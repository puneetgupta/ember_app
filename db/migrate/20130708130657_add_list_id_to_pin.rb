class AddListIdToPin < ActiveRecord::Migration
  def change
    add_column :pins, :list_id, :integer
  end
end
