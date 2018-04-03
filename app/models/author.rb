class Author < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #
  mount_uploader :photo, ProfilePhotoUploader

  # == Associations and Nested Attributes == #
  has_and_belongs_to_many :books

  # == Validations == #
  validates_presence_of :name_en

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

end
