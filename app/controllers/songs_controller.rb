class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def edit
    end

    def update
    end

    def show
        @song = Song.find(params[:id])
#@genre = Genre.find(params[:id])
    end
end