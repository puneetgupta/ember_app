class Category < ActiveRecord::Base
  attr_accessible :category_description, :category_name, :category_slug
  belongs_to :pin
end
