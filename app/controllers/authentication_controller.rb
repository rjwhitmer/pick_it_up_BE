class AuthenticationController < ApplicationController
    skip_before_action :authenticate, only: [:login]

    def login
        @user = User.find_by(name: params[:name])

        if !@user
            render json: { message: @user.errors }, status: :unauthorized
        else
            if !@user.authenticate(params[:password])
                render json: { message: @user.errors }
            else
                payload = { user_id: @user.id }
                secret = Rails.application.secret_key_base
                token = JWT.encode(payload, secret)
                render json: { "token": token, "payload": payload }, status: :created
            end
        end
    end

end
