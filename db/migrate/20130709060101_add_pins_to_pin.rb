class AddPinsToPin < ActiveRecord::Migration
  def change
    add_attachment :pins, :pins
  end
end
