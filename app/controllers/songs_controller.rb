class SongsController < ApplicationController
  before_action :find_id, only: [:show, :edit]
  
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(genre_set_params)
    @song.save
    redirect_to song_path(@song)
  end

  def show
  end

  def edit
  end

  def update
    @song = find_id
    @song.update(genre_set_params)
    redirect_to song_path(@song)
  end

  private

  def genre_set_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_id
    @song = Song.find(params[:id])
  end
end