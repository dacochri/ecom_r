class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :image, :price, :manufacturer, :quantity, :description
end
