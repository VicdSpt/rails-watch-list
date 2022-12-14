class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmarks.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end
  
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    list = List.find(params[:list_id])
    @bookmark.list = list
    if @bookmark.save
    redirect_to list_path(list)
    else
      render:new, status: :unprocessable_entity
   end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmark_path, status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
