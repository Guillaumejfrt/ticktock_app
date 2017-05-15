class UsersController < ApplicationController

  def update
    @user = current_user
    if @user = User.update(user_params)
      redirect_to profile_path
    else
      render 'pages/edit_profile'
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
