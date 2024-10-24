class UsersController  < ApplicationController
     def show
      @user = User.find(params[:id])
     end

     def send_welcome_email
      @user = User.find(params[:user_id])
      UserMailer.welcome_email(@user).deliver
     end
end
