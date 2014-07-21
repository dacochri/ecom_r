module ApplicationHelper
  def format_time(date_time)
    date_time.strftime('%d/%m/%Y %H:%M')
  end
  
  def format_discount_value(discount)
    case discount.discount_type
      when '$'
        '%.2f' % discount.value
      when '%'
        '%.0f' % discount.value
      else
        'Didn\'t match discount_type'
    end
  end

  def calculate_discount_price(product, discount)
    if discount.discount_type == '$'
      number_to_currency(product.price - discount.value)
    elsif discount.discount_type == '%'
      number_to_currency(product.price - (product.price * (discount.value / 100)))
    end
  end
end
