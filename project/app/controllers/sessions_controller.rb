class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:session][:email], password: params[:session][:password])[0]
    if user != nil
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
			cookies["authentification"] = user.id
			flash[:notice] = "You are successfully log in"
      redirect_to user_path(user)

		else
			flash[:notice] = "Your email or password are incorrect"
      redirect_to root_path
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
		cookies["authentification"]=nil
    redirect_to root_path
  end
end
