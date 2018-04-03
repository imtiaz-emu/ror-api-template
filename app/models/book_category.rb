class BookCategory < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #
  mount_uploader :cover_photo, CoverPhotoUploader

  # == Associations and Nested Attributes == #
  has_and_belongs_to_many :books

  # == Validations == #
  validates_presence_of :name

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

end
