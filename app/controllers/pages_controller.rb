class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :get_user, only: [ :profile, :edit_profile ]

  def home
  end

  def profile
  end

  def edit_profile
  end

  private

  def get_user
    @user = current_user
  end
end
