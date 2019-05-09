json.extract! user, :id, :profile_image, :nickname, :biography, :email, :password, :country, :city, :status, :gps_location, :super_admin_id, :admin_id, :created_at, :updated_at
json.url user_url(user, format: :json)
