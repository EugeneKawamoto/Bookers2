class FavoritesController < ApplicationController
  def create
    Favorite.create(user_id: current_user.id, book_id: params[:id])
    redirect_back(fallback_location: books_path)
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, book_id: params[:id]).destroy
    redirect_back(fallback_location: books_path)
  end
end
