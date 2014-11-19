json.array!(@news) do |news|
  json.extract! news, :id, :title, :description
  json.url news_url(news, format: :json)
end
