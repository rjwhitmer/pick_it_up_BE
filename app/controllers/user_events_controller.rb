class UserEventsController < ApplicationController
    skip_before_action :authenticate

    def index
        @user_event = UserEvent.all
        render json: @user_event
    end

    def create
        @user_event = UserEvent.new({
            user_id: params[:user_id],
            sporting_event_id: params[:event_id]
        })

        if @user_event.save
            render json: @user_event, status: :created
        else
            render json: { message: @user_event.errors }
        end
    end

    def destroy
        @event = UserEvent.find(params[:id])
        @event.destroy
        render json: { message: "buh-bye!"}, status: :no_content
    end

end
