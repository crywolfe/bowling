class SessionsController < ApplicationController
  def new

  end

  def create

    user = User.find_by(email: params[:email])
    # if we found the user and they gave us the right password
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to games_path, :notice => "Logged In"
    else
      flash[:notice] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    binding.pry
    redirect_to root_path, :notice => "Logged Out"
  end
end
