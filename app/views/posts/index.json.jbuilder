json.array!(@posts) do |post|
  json.extract! post, :name, :title, :desc
  json.url post_url(post, format: :json)
end
