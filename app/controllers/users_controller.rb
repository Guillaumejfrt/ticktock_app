class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update ]

  def show
  end

  def edit
  end

  def update
    if @user = User.update(user_params)
      redirect_to pages_profile_path
    else
      render 'pages/edit_profile'
    end
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end

end
