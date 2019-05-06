json.extract! super_admin, :id, :profile_image, :nickname, :biography, :email, :password, :country, :city, :status, :gps_location, :created_at, :updated_at
json.url super_admin_url(super_admin, format: :json)
