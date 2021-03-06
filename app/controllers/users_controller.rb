class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:follow, :unfollow]
  def index
    if params[:q]
      users = User.where("email ILIKE ?", "%#{params[:q]}%")
    else
      users = User.all
    end
    users = users.page(params[:page]).per(params[:size])
    respond_to do |format|
      format.html {render locals: { users:users } }
      format.json {render json: users }
    end
  end

  def follow
    user = User.find(params[:user_id])
    current_user.follow(user)
  end

  def unfollow
    user = User.find(params[:user_id])
    current_user.stop_following(user)
  end

  def show
    user = User.find(params[:id])
    respond_to do |format|
      format.html {render locals: { user:user } }
      format.json {render json: @user, include: params[:include] }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  #def self.authenticate!(email, password)
  # user = User.find_by_email(email)
  #user.authenticate(password)
  #end
  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
