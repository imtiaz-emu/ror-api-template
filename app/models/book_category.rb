class BookCategory < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #

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
