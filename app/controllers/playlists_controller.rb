class PlaylistsController < ApplicationController
  before_action :playlist_routes, only: [:show, :update, :edit, :destroy]

  def index
    @playlists = Playlist.all
  end

  def show
  end

  def edit
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      redirect_to playlist_path(@playlist)
    else
      render :new
    end
  end

  def new
    @playlist = Playlist.new
  end

  def destroy
  end
  
  def update
    if @playlist.update(playlist_params)
      redirect_to playlist_path(@playlist)
    else
      render :edit
    end
  end

  private
    def playlist_routes
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:name, :description)
    end

end
