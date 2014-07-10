class IndexController < ApplicationController
  def index
    @top_level_categories = Category.where(category_id: nil)
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
