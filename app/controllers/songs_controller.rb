class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    

    def show
        @song = Song.find(params[:id])
    end
    
    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(song_params)
        if @song.save
          flash[:success] = "Song successfully created"
          redirect_to @song
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        @song = Song.find(params[:id])
    end
    
    def update
        @song = Song.find(params[:id])
        if @song.update_attributes(song_params)
          flash[:success] = "Song was successfully updated"
          redirect_to song_path(@song)
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)    
    end
    
end
