
require 'google/apis/people_v1'
require 'google/api_client/client_secrets.rb'

class ApplicationController < ActionController::Base
  People = Google::Apis::PeopleV1

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
    service.authorization = secrets.to_authorization

    response = service.list_person_connections(
      'people/me',
       person_fields: ['names', 'emailAddresses', 'phoneNumbers']
    )
    render json: response
  end

  def new_session_path(scope)
    new_user_session_path
  end

  def user_wg
    @user_wg ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :user_wg

  def authorize
    redirect_to '/login' unless current_user
  end

end
