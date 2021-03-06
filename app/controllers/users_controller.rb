class UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user, include: ['items', 'items.requests', 'items.offers']
  end

  # POST /users
  def create

    if current_user
    @user = User.new(Uploader.upload(user_params))

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
    else
    render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(Uploader.upload(user_params))
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :email, :password_digest, :image, :bio, :shoe_size, :dress_size, :base64, :id)
    end
end
