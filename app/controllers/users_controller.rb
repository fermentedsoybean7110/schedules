class UsersController < ApplicationController
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      redirect_to  edit_user_path, flash: { alert: "必須項目を入力して下さい"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
