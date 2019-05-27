require 'google/apis/people_v1'
require 'google/api_client/client_secrets.rb'
class ApplicationController < ActionController::Base
  People = Google::Apis::PeopleV1
  protect_from_forgery with: :exception

  def contacts
    secrets = Google::APIClient::ClientSecrets.new(
      {
        "web" =>
          {
            "access_token" => current_user.token,
            "refresh_token" => current_user.refresh_token,
            "client_id" => Rails.application.secrets[:google_client_id],
            "client_secret" => Rails.application.secrets[:google_secret]
          }
      }
    )
    service = People::PeopleServiceService.new
    service.authorization = secrets.to_authorization    response = service.list_person_connections(
      'people/me',
       person_fields: ['names', 'emailAddresses', 'phoneNumbers']
    )
    render json: response
  end

  def current_user
    if session[:current_user_id]
      @_current_user ||= User.find(session[:current_user_id])
    else
      @_current_user = nil
    end
    return @_current_user
  end

  def is_user_logged_in?
  	logged_in = false
    if current_user != nil
      logged_in = true
    end
    if logged_in then true else redirect_to root_path end
  end
end
