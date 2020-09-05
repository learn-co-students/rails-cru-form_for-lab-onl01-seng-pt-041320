class GenresController < ApplicationController

    def index
        @genre = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def show
        @genre = Genre.find_by_id(params[:id])
        # binding.pry
    end

    def create
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by_id(params[:id])
    end

    def update
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end
end
