class EpisodesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Episode.all
    end

    def show
        episode = Episode.find(params[:id])
        render json: episode, serializer: EpisodeWithGuestsSerializer
    end

    def destroy
        episode = Episode.find(params[:id])
        episode.destroy
        head :no_content
    end

    private
    def render_not_found_response
        render json: { error: "Episode not found" }, status: :not_found
    end
end
