class InformationsController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]

  def index
    @informations = Information.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Information.create(image: information_params[:image], text: information_params[:text],position: information_params[:text], user_id: current_user.id)
  end

  def destroy
    information = Information.find(params[:id])
    if information.user_id == current_user.id
      information.destroy
    end
  end

  def edit
    @information = Information.find(params[:id])
  end

  def show
    @information = Information.find(params[:id])
    @comments = @information.comments.includes(:user)
  end

  def update
    information = Information.find(params[:id])
    if information.user_id == current_user.id
      information.update(information_params)
    end
  end


  private
  def information_params
    params.permit(:image, :text, :position)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end


  private
  def information_params
    params.permit(:name, :image, :text,:position)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

