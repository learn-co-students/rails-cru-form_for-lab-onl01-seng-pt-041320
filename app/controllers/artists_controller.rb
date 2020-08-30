class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end
end