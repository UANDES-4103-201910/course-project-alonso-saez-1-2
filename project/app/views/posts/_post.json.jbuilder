json.extract! post, :id, :title, :creation_date, :solve_status, :file, :image, :text, :link, :wall_id, :superadmin_id, :admin_id, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
