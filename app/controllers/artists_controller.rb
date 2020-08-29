class ArtistsController < ApplicationController
    def index
		@artist = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)
		@artist.save
		redirect_to artist_path(@artist)
	end
	   
	def update
		@artist = Artist.find(params[:id])
		@artist.update(artist_params)
		redirect_to artist_path(@artist)
	end

	def edit
	  @artist = Artist.find(params[:id])
	end

		   
	private
	   
	   
	# We pass the permitted fields in as *args;
	# this keeps `post_params` pretty dry while
	# still allowing slightly different behavior
	# depending on the controller action. This
	# should come after the other methods
	 
	def artist_params
	  params.require(:artist).permit(:name, :bio)
	end
end
