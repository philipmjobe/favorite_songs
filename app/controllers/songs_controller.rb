class SongsController < ApplicationController

  def index 
    songs = Song.all
    render json: songs
  end 

  def show
    songs = Song.find_by(id: params[:id])
    render json: songs.as_json
  end 
end
