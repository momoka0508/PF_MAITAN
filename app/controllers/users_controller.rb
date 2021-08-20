class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # エラーメッセージ表示の為、インスタンス変数
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      # 元々のデータ渡す必要が無いから、インスタンス変数渡さなくていい
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
