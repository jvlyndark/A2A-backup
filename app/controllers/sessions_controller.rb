class SessionsController < ApplicationController

    def new
    end

    # Creates session object that allows user to be logged in persistently
    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenicate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged in successfully!"
            redirect_to user
            # should this be redirect_to Profile.find_by(current_user.user_id) ??
        else
            flash.now[:alert] = "There was something wrong with your login details"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end

end