class InformationsController < ApplicationController
  
  before_action :move_to_index, except: :index

  def index
    @informations = Information.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Information.create(image: information_params[:image], text: information_params[:text], user_id: current_user.id)
  end

  def destroy
    information = Information.find(params[:id])
    if information.user_id == current_user.id
      information.destroy
    end
  end

  private
  def information_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end


  private
  def information_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

