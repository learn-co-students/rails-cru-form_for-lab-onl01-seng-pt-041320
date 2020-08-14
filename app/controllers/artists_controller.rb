class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(params.require(:artist).permit(:name, :bio))
        @artist.save
        redirect_to artist_path
    end

    def show
        @artist = Artist.find_by_id(params[:id])
    end

    def edit
    end

    def update
    end
end
