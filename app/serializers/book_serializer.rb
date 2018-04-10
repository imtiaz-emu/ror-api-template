class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :isbn, :description, :cover, :price,
             :price_unit, :avg_rating, :edition, :no_of_pages,
             :country, :publisher

  has_many :authors
  has_many :book_categories
  has_many :ratings

  def publisher
    PublisherSerializer.new(object.publisher).attributes
  end

end
