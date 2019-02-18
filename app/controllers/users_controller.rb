class UsersController < ApplicationController
    #skip_before_action :ensure_login, only: [:singin] 

    def singup #registration
        @user = User.new
    end

    def create 
        @user = User.new(user_params)  
        if @user.save
            session[:checkuser_id] = @user.id   
            redirect_to  sessions_new_path
        else 
            render 'singup'
        end
    end


    def singin   #login
        if params[:users]
            #in session
        end
    end


   
    def index
        
    end

    def destroy
       

    end

    private 
    def user_params
        params.require(:users).permit(:name,:username,:password,:password_confirmation)
    end

end