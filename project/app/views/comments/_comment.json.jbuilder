json.extract! comment, :id, :text, :image, :link, :user_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
