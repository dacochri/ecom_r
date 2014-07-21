json.array!(@discounts) do |discount|
  json.extract! discount, :id, :reference, :reference_to, :value, :discount_type, :start, :end
  json.url discount_url(discount, format: :json)
end
