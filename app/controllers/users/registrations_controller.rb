class Users::RegistrationsController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, only: [:cancel]
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to new_member_path(@user), notice: 'Please fill in more information.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
      
    end
  end

  private
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
