class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = Album.all
    @album = Album.find(params[:id])
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :image_url)
    params.require(:album).permit(:name, :image_url, :released_at, :artist_id)
  end
end
