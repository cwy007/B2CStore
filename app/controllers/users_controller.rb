class UsersController < ApplicationController
  # 准备view中使用的数据
  def new
    @is_using_email = true
    @user = User.new
  end

  def create
    @is_using_email = (params[:user] and !params[:user][:email].nil?)
    @user = User.new(user_params)
    @user.uuid = session[:user_uuid]

    if @user.save
      flash[:notice] = "注册成功，请登录"
      redirect_to new_session_path
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :cellphone, :token)
    end
end
