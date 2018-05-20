class Review < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == File Uploader == #

  # == Associations == #
  belongs_to  :user
  belongs_to :reviewable, polymorphic: true


  # == Attributes == #

  # == Validations == #
  validates_presence_of :title, :description

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

end
