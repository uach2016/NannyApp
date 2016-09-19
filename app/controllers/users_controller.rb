
class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    if ((current_user.sign_in_count > 1)&&(current_user.role == "client"))
    	redirect_to client_path(current_user)
     elsif ((current_user.sign_in_count > 1)&&(current_user.role == "sitter"))
      redirect_to sitter_path(current_user)
    else
     current_user.sign_in_count == 1
			render 'users/new'	
		end
  end

   def destroy
    current_user = User.find(params[:id])

    if current_user.destroy
        redirect_to root_url, notice: "User deleted."
    end
  end
end