class IndexController < ApplicationController
  def index
    @top_level_categories = Category.where(category_id: nil)
    @sliders = Slider.all.limit(3).order('id DESC')
    @recent_products = Product.all.limit(5).order('id DESC')
  end

  def blog

  end

  def search

  end

  def about

  end

  def contact

  end
end
