module DiscountsHelper
  def get_reference(discount)
    case discount.reference_to
      when 'category'
        Category.find(discount.reference)
      when 'brand'
        Brand.find(discount.reference)
      when 'product'
        Product.find(discount.reference)
      else
        'Didn\'t match reference type'
    end
  end

  def format_value(discount)
    case discount.discount_type
      when '$'
        '%.2f' % discount.value
      when '%'
        '%.0f' % discount.value
      else
        'Didn\'t match discount_type'
    end
  end
end
