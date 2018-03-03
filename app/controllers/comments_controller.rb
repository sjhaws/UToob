class CommentsController < ApplicationController

  before_action :set_movie

  def new
    @comment = Comment.new(user_id: current_user.id)
  end

  def show
  end

  def create 
    @comment = @movie.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @movie
    else
      render :new
    end
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
