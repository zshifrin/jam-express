class RegistrationsController < Devise::RegistrationsController

	def create
		puts registration_params.inspect
	end

  def registration_params
    params.require(:user).permit(:name, :location, :bio, :avatar, :email, :password, :password_confirmation)
  end
end