class Book < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == File Uploader == #
  mount_uploader :cover, CoverPhotoUploader

  # == Associations == #
  belongs_to  :publisher, optional: true
  has_and_belongs_to_many :book_categories
  has_and_belongs_to_many :authors
  has_many  :ratings, dependent: :destroy
  has_many :reviews, as: :reviewable

  # == Attributes == #

  # == Validations == #
  validates_presence_of :name, :isbn, :publisher_id
  validates_uniqueness_of :isbn

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

end
