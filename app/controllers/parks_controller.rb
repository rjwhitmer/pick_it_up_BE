class ParksController < ApplicationController
    def index
        @park = Park.all
        render json: @park
    end
end
