class UserProfileController < ApplicationController
  before_action :authenticate_user!
  layout 'user_layout'

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @is_admin = @user.admin_user.is_admin
  end

  def params_user
    params.require(:user).permit( :email, :password, :password_confirmation, user_info_attributes: [:id, :first_name, :last_name, :address, :gender, :birthdate, :cep, :state])
 end 

  
end
