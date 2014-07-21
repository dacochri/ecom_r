class IndexController < ApplicationController
  def index
    @top_level_categories = Category.where(category_id: nil)
    @sliders = Slider.all.limit(3).order('id DESC')
    @recent_products = Product.all.limit(5).order('id DESC')
    @discounts = Discount.where(['start_date < ? AND end_date > ?', Time.now, Time.now]).order('created_at DESC')
  end

  def blog

  end

  def search
    @products = Product.where('name LIKE :search', search: "%#{params[:search]}%")
  end

  def about

  end

  def contact

  end
end
