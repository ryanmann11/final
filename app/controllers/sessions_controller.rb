class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

  def create
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
# At this point, we've logged in successfully, now storing user id in the session hash, 
# Want to be able to pull it later under the key user.id, now stored in cookie in web browser 
      session["user_id"] = user.id 
      redirect_to root_path, notice: "Welcome"
    else 
      redirect_to root_path, alert: "Please try again"
    end   
  end   

  def destroy
    session["user_id"] = nil
    redirect_to root_path, notice: "Happy casing!"
  end

end