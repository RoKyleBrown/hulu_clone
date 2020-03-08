class Api::UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if @user.save
            #movies index
            log_in!(@user)
            render "api/users/show"
        else
             render json: @user.errors.full_messages, status: 422
        end

    end

    private

    def user_params
       params.require(:user).permit(:email, :password, :first_name, :last_name) 
    end
end
