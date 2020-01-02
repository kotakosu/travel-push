class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @informations = current_user.informations.page(params[:page]).per(5).order("created_at DESC")
  end

end
