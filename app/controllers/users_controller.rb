class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        flash[:notice] = "Your sign up worked!"
       redirect_to games_path
     else
        flash[:notice] = "Something went wrong"
     render "new"
     end
  end

  private

  # Strong params
  def user_params
    params.require(:user).permit(:id, :username, :email, :password, :password_confirmation)

  end
end
