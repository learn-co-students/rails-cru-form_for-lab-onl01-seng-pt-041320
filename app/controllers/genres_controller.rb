class GenresController < ApplicationController
    def index
    end
    
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find_by_id(params[:id])
    end

    def edit
        @genre = Genre.find_by_id(params[:id])
    end

    def update
        @genre = Genre.find_by_id(params[:id])
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end
end