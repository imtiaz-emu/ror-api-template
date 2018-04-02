class Book < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == File Uploader == #

  # == Associations == #
  belongs_to  :publisher, optional: true
  has_and_belongs_to_many :book_categories, join_table: :book_categories_books
  has_and_belongs_to_many :authors, join_table: :authors_books

  # == Attributes == #
  accepts_nested_attributes_for :book_categories, allow_destroy: true
  accepts_nested_attributes_for :authors, allow_destroy: true

  # == Validations == #
  validates_presence_of :name, :isbn, :publisher_id
  validates_uniqueness_of :isbn

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

  # def authors_attributes=(attributes)
  #   if attributes['id'].present?
  #     self.author = Author.find(attributes['id'])
  #   end
  #   super
  # end
  #
  # def book_categories_attributes=(attributes)
  #   if attributes['id'].present?
  #     self.book_category = BookCategory.find(attributes['id'])
  #   end
  #   super
  # end

end
