# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :configure_account_update_params, only: [:update]

  # def edit
  #   @user = User.find(current_user.id)
  # end

<<<<<<< Updated upstream
  # POST /resource
  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
=======
  # def update
  #   @user = User.update(current_user.id)
  #   return redirect_to root_path
>>>>>>> Stashed changes
  # end

  private
  # def user_params
  #   params.require(:user).permit(:name, :email, :password)
  # end


  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # def configure_permitted_parameters
  #   # added_attrs = [:nickname, :email, :encrypted_password]
  #   devise_parameter_sanitizer.permit(:account_update, keys:[
  #     :name, :email, :password
  #   ])
  # end
      # devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      # devise_parameter_sanitizer.for(:sign_up){|user|
      # user.permit(:nickname, :email, :encrypted_password, :profile_attributes => [:family_name, :first_name, :family_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day])
      # }

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
