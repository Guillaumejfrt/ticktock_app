class UsersController < ApplicationController
  before_action :find_user, only: : [ :show, :edit, :update]
  def show
    @user = current_user
  end

  def edit
  @user = current_user
  end

  def update
    @user = User.new(user_params)
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    require.(:user).permit(:first_name, :last_name)
  end

end
