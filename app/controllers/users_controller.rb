class UsersController < ApplicationController

  def show
    @user = User.find params[:id]
    
  end



  def new
     @user = current_user
     @user = User.new
  end
  
   def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Rmit News!"

      redirect_to root_path, notice: 'Logged in'
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end