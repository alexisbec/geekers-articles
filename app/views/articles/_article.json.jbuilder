json.extract! article, :id, :title, :text, :author_id, :category_id, :image, :created_at, :updated_at
json.url article_url(article, format: :json)
