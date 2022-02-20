class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def search_user
    @users = User.all
    @result = params[:result]
    if @result.present?
      @users_result = User.search_users(@result)
      if !(@users_result.nil?)
        #redirect_to root_path, notice: "Search for: #{@result}" 
        render 'users/index'
      else
        redirect_to root_path, notice: "We couldn't find a user with that result."
      end
    else
      redirect_to root_path, notice: "You must enter a value."
    end
  end
end
