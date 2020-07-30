class UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users, include: :user_events
    end

    def create
        @user = User.new({
            name: params[:name],
            password: params[:password]
        })

        if @user.save
            render json: @user, status: :created
        else
            render json: { message: @user.errors }
        end
    end
end