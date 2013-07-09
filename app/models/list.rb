class List < ActiveRecord::Base
  attr_accessible :category_description, :category_name, :category_slug
  has_many :pins
end
