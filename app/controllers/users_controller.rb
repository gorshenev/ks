class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Добро пожаловать!"
      redirect_to @user
    else
      render 'new'
    end    
  end

  def show
    @user = User.find(params[:id])

    @previous_events = @user.previous_events
    @upcoming_events = @user.upcoming_events

  end

  def edit
    @user = User.find(params[:id])
  end



  def index
      @users = User.paginate(page: params[:page])
  end



  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
        params.require(:user).permit(:name, :email)
    end

end
