class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :get_user, only: [ :profile, :edit_profile, :dashboard ]

  def home
  end

  def profile
  end

  def edit_profile
  end

  def dashboard
  end

  private

  def get_user
    @user = current_user
  end
end
