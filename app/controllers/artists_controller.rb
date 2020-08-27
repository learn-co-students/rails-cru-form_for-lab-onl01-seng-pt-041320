class ArtistsController < ApplicationController

    def show
        artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        artist
    end

    def update
        artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def artist
        @artist = Artist.find(params[:id])
    end

end