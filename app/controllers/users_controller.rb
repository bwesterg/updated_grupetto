class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: {user: current_user, passes: current_user.passes}
    end

    def create
        @user = User.new(user_params)

        if @user.valid? 
            @user.save
            @token = JWT.encode({user_id: @user.id}, "yes")
            render json: {user: @user, passes: @user.passes, token: @token}, status: :created
        else
            render json: {errors: @user.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params 
        params.require(:user).permit(:username, :password)
    end
end
