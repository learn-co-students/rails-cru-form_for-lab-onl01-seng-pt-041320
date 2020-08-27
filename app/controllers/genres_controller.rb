class GenresController < ApplicationController

    def show
        genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        genre
    end

    def update
        genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def genre
        @genre = Genre.find(params[:id])
    end

end