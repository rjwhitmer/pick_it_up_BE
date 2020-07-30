class UserEventsController < ApplicationController
    def index
        @user_event = UserEvent.all
        render json: @user_event
    end

    def create
        @user_event = UserEvent.new({
            user_id: params[:user_id],
            event_id: params[event_id]
        })

        if @user_event.save
            render json: @user_event, status: :created
        else
            render json: { message: @user_event.errors }
        end
    end

end
