class UsersController < ApplicationController

  def index
    
  end
  def login   
    #@login=User.login
  end
  def login_check 
    # Login Page
    @login=User.login(login_params)
    if User.find_by(email: @login.email)
      redirect_to "/"
    else 
      render :index, status: :unprocessable_entity 
    end
    # @user=User.all
    # @user=User.find_by(params[:email])    
  end
  


  def home 
    @users=User.all
  end
  # def user_param
  #   @users=User.all 
  #   # if @user.email==user.param.email && @user.password==user.param.password
  #   #   redirect_to "/users/show"
  #   # else 
  #   #   render :index, status: :unprocessable_entity 
  #   # end
  # end

  def show 
    @user=User.find(params[:id])
  end

  def new 
    @user = User.new
  end
  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to "/users"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 
    def user_params 
      params.require(:user).permit(:user_name, :age, :email, :password,:status )
    end

    def login_params 
      params.require(:email, :password)
    end
end
