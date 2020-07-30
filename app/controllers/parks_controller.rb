class ParksController < ApplicationController
    def index
        @park = Park.all
        render json: @park, include: [:sporting_events]
    end

    def create
        @park = Park.new({
            name: params[:name],
            latitude: params[:latitude],
            longitude: params[:longitude]
        })
        if @park
            @park.save
            render json:  @park, status: :created
        else
            render json: { message: "no content" }, status: :no_content
        end
    end
end
