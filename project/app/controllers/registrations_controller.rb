class RegistrationsController < ApplicationController
  def new
  end

  def create
    usuario = User.new(profile_image: params[:registration][:profile_image], nickname: params[:registration][:nickname], biography: params[:registration][:biography], email: params[:registration][:email], password: params[:registration][:password], country: params[:registration][:country], city: params[:registration][:city], status: params[:registration][:status], gps_location: params[:registration][:gps_location], super_admin_id: params[:registration][:super_admin_id],
    admin_id: params[:registration][:admin_id])
	  if usuario.save
			flash[:notice] = "Your registration is complete"
		  redirect_to root_path
		else
			flash[:notice] = "Your registration has fail, try again"
			redirect_to registration_path
    end
  end

  def destroy
  end
end
