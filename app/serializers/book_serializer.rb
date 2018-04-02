class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :isbn, :description, :cover, :price,
             :price_unit, :avg_rating, :edition, :no_of_pages,
             :country, :publisher, :authors, :categories

  def publisher
    PublisherSerializer.new(object.publisher).attributes
  end

  def authors
    AuthorSerializer.new(object.authors).attributes
  end

  def categories
    BookCategory.new(object.book_categories).attributes
  end

end
