
class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    if current_user.sign_in_count > 1
    	render 'users/profile'
    else current_user.sign_in_count == 1
			render 'users/new'
		end
  end
end