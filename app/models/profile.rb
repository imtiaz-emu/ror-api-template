class Profile < ApplicationRecord

  # == Modules == #

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #

  # == Associations and Nested Attributes == #
  belongs_to :user
  accepts_nested_attributes_for :user

  # == Validations == #
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :phone, presence: true, on: :update

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #

end
