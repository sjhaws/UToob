class PlaylistsController < ApplicationController
  before_action :set_user
  before_action :set_playlist, only: [:show, :update, :edit, :destroy]

  def index
    @playlists = @user.playlists
  end

  def show
  end

  def edit
  end

  def create
    @playlist = @user.playlists.new(playlist_params)

    if @playlist.save
      redirect_to user_playlists_path(@user, @playlist)
    else
      render :new
    end
  end

  def new
    @playlist = @user.playlists.new
  end

  def destroy
    @playlist.destroy
  end
  
  def update
    if @playlist.update(playlist_params)
      redirect_to update_user_playlist_path(@user, @playlist)
    else
      render :edit
    end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:name, :description)
    end

end
