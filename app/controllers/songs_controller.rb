class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
    end
    
    def create
    end

    def edit
    end

    def update
    end

    def show
        @song = Song.find(params[:id])
        @genre = Genre.find(params[:id])
    end
end