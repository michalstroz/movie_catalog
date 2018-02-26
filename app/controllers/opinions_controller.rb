class OpinionsController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'secret1', only: [:destroy]

  before_action :provide_movie, only: [:create, :destroy]

  def create
    @opinion = Opinion.new(opinion_params.merge(movie: @movie))
    if @opinion.save
      redirect_to movie_path(@movie)
    else
      render 'movies/show'
    end
  end

  def destroy
    @opinion = @movie.opinions.find(params[:id])
    @opinion.destroy
    redirect_to movie_path(@movie)
  end

  private

  def provide_movie
    @movie = Movie.find(params[:movie_id])
  end

  def opinion_params
    params.require(:opinion).permit(:user_name, :user_surname, :rate, :comment, :movie_id)
  end
end
