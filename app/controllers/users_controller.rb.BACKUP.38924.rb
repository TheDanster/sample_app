class UsersController < ApplicationController

  def show
<<<<<<< HEAD
    @user = User.find(params[:id])
  end
  
=======
    @user = User.find(params[:id]) 
  end

>>>>>>> sign-up
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the sample app!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
<<<<<<< HEAD

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
=======
end
>>>>>>> sign-up
