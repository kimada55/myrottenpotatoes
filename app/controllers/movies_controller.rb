# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
	def index
		# index.html.haml
    	@movies = Movie.all
  	end

  def show
  	# show.html.haml
  	#FOR DEBUGGING raise params.inspect
  	id = params[:id] # retrieve movie ID from URI route
  	@movie = Movie.find(id) # look up movie by unique ID
  	# will render app/views/movies/show.html.haml by default
	end

	def new
		# new.html.haml
  		# default: render 'new' template
	end

	def create
		# raise params.inspect
  		@movie = Movie.create!(params[:movie])
  		flash[:notice] = "#{@movie.title} was successfully created."
  		redirect_to movies_path
	end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "#{@movie.title} was destroyed!!!"
    redirect_to movies_path
  end

  # ADDITION 3/7/2013
  def search_tmdb
  # hardwire to simulate failure
    #flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    #redirect_to movies_path
    @movies = Movie.find_in_tmdb(params[:search_terms]) 
  end

end