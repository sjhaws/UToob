class CommentsController < ApplicationController

  before_action :set_movie
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new(user_id: current_user.id)
    render partial: "form"
  end

  def edit
    render partial: "form"
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

  def edit
    render partial: "form"
  end

  def update
    if @comment.update(comment_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @movie
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
