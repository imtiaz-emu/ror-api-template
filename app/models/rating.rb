class Rating < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #

  # == Associations and Nested Attributes == #
  belongs_to  :user
  belongs_to  :book

  # == Validations == #
  validates_presence_of :rate

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

end
