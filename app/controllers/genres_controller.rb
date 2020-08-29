class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end
    
    def new
        @genre = Genre.new
    end
    
    def create
        @genre = Genre.new(genre_params)
        if @genre.save
          flash[:success] = "Genre successfully created"
          redirect_to genre_path(@genre)
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        @genre = Genre.find(params[:id])
    end
    
    def update
        @genre = Genre.find(params[:id])
        if @genre.update_attributes(genre_params)
          flash[:success] = "Object was successfully updated"
          redirect_to genre_path(@genre)
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
    
end
