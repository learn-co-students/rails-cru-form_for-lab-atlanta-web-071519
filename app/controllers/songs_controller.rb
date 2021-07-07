class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        set_song
    end

    def new
    end
    
    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def edit
        set_song
    end

    def update
        set_song
        @song.update(name: song_params[:name], artist_id: song_params[:artist_id], genre_id: song_params[:genre_id])
        redirect_to song_path(@song)
    end

    def destroy
        set_song
        @song.destroy
        redirect_to songs_path 
    end

    private

    def set_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
