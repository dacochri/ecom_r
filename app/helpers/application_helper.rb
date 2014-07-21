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

  def format_discount_amount(discount)
    case discount.discount_type
      when '$'
        '-' + discount.discount_type + '%.2f' % discount.value
      when '%'
        '-' + '%.0f' % discount.value + discount.discount_type
      else
        'Didn\'t match discount_type'
    end
  end

  def calculate_discount_price(product, discount)
    case discount.discount_type
      when '$'
        number_to_currency(product.price - discount.value)
      when '%'
        number_to_currency(product.price - (product.price * (discount.value / 100)))
      else
        'Didn\'t match discount_type'
    end
  end
end
