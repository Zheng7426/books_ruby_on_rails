class BooksController < ApplicationController
  def index
    #@search_term = params[:name] || 'can'
      #@all = Book.all
      #@countries = Book.search(@search_term)
    @lists = Book.list['results']['books']
    @lists.each do |list|
      @title = list['title']
      @author = list['author']
      @publisher = list['publisher']
      @description = list['description']
      @cover = list['book_image']
    end
  end
  def show
    @search_title = params[:id] || 'Becoming'
    @book = Book.find(@search_title)
    @reviews = @book['results']
  end
end
