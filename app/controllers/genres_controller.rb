class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        set_genre
    end

    def new
    end
    
    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def edit
        set_genre
    end

    def update
        set_genre
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    def destroy
        set_genre
        @genre.destroy
        redirect_to genres_path 
    end

    private

    def set_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end
