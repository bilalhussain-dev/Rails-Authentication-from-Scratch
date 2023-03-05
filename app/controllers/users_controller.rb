class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # debugger
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Hi, #{@user.username}. Logged in successfully"
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if  @user.update(user_params)
      flash[:success] = "Hi, #{@user.username}. Settings updated successfully"
      redirect_to articles_path
    else
      render :edit, status: :unprocessable_entity
    end

  end



  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end