class UsersController < ApplicationController
    skip_before_action :authenticate

    def index 
        @users = User.all
        render json: @users, include: :sporting_events
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :sporting_events
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