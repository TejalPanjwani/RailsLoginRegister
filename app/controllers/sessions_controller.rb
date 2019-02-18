class SessionsController < ApplicationController
  def new
  end

  def create #find

    @user = User.new( params.require(:users).permit(:username,:password_digest))
    
    if User.exists?(:username => @user.username)
        @checkuser = User.where("username=?", @user.username)
        #@user = User.new(user_params_singin)
        if @checkuser[0].password == @user.password
            session[:checkuser_id] = @checkuser[0].id
            flash[:notice]="Successfully loged in!!!!!"
            redirect_to main_users_path
        else
            flash[:notice]="Enter correct password"
            render 'new'
        end
    else 
        flash[:notice]="Enter correct username"
        render 'new'
    end
  end

  def destroy
    session[:checkuser_id] = nil   
    #reset_session #wipe out session and everything in it
    redirect_to users_path
  end
end
