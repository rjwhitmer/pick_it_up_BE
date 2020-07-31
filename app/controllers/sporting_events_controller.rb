class SportingEventsController < ApplicationController
    skip_before_action :authenticate

    def index
        @event = SportingEvent.all
        render json: @event
    end

    def create
        @event = SportingEvent.new({
            sport: params[:sport],
            players: params[:players],
            event_date: params[:event_date],
            event_time: params[:event_time],
            park_id: params[:park_id]
        })
        if @event
            @event.save
            render json:  @event, status: :created
        else
            render json: { message: "no content" }, status: :no_content
        end
    end

    def update
        @event = SportingEvent.find(params[:id])
        @event.update({
            sport: params[:sport],
            players: params[:players],
            event_date: params[:event_date],
            event_time: params[:event_time]
        })
        render json: @event, status: :created
    end

    def destroy
        @event = SportingEvent.find(params[:id])
        @event.destroy
        render json: { message: "buh-bye!"}, status: :no_content
    end
end
