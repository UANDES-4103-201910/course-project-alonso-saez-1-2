json.extract! admin, :id, :profile_image, :nickname, :biography, :email, :password, :country, :city, :status, :gps_location, :super_admin_id, :created_at, :updated_at
json.url admin_url(admin, format: :json)
