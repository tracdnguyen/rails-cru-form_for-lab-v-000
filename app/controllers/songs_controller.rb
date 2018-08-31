class SongsController < ApplicationController
  def index

  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(params.require(:song))
    @song.save
    redirect_to song_path(@artist)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song))
    redirect_to song_path(@song)
  end
end
