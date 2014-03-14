json.array!(@admin_themes) do |admin_theme|
  json.extract! admin_theme, :id, :title, :short_title, :description, :properties
  json.url admin_theme_url(admin_theme, format: :json)
end
