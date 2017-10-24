class UsersController < ApplicationController

  def index
    render json: User.all
  end



  def show
    user = User.find(params[:id])
    if user
      render json: user
    else
      render json: user.errors.full_messages, status: :bad_request
    end
  end

  def create
    user = User.new(users_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    user.update(users_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def users_params
    params[:user].permit(:name, :email)
  end

end
