json.array!(@sliders) do |slider|
  json.extract! slider, :id, :title, :text, :image, :link
  json.url slider_url(slider, format: :json)
end
