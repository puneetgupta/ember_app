class Pin < ActiveRecord::Base
  attr_accessible :category_name, :image, :list_id, :pins
  belongs_to :list

  has_attached_file :pins, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
