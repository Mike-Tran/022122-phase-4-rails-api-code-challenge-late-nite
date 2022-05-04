class AppearancesController < ApplicationController
    def create
        appearance = Appearance.create!(appear_params)
        render json: appearance, status: :created, serializer: AppearanceWithEpisodeAndGuestSerializer
    end

    private

    def appear_params
        params.permit(:rating, :episode_id, :guest_id)
    end


end
