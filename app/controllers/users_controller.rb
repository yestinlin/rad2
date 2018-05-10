class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Rmit News!"
=======
  end

  def new
     @user = User.new
  end
  
   def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Rmit News!"
>>>>>>> sign-up
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
<<<<<<< HEAD
end
=======
end
>>>>>>> sign-up
