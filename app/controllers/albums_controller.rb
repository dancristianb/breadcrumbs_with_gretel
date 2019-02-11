class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def edit
    # @album = Album.find(params[:id])
    @album = Album.find_by(slug: params[:slug])
  end

  def show
    # @album = Album.find(params[:id])
    @album = Album.find_by(slug: params[:slug])
  end
end