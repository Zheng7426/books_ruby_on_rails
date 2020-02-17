class BooksController < ApplicationController
  def index
    @list_name = params[:genre] || 'hardcover-nonfiction'
    @lists = Book.list(@list_name)['results']['books']
  end

  def show
    @query = params[:id].split('=')
    @search_title = @query[0] || 'Becoming'
    @author = @query[1]
    @publisher = @query[2]
    @book = Book.search(@search_title)
    @reviews = @book['results']
    if @reviews.length == 0
      @blank_message = 'There are currently no reviews for this book. Please try another book.'
    end
  end
end
