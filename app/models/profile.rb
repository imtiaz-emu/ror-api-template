class Profile < ApplicationRecord

  # == Modules == #
  require 'file_size_validator'

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #
  mount_uploader :photo, ProfilePhotoUploader

  # == Associations and Nested Attributes == #
  belongs_to :user
  accepts_nested_attributes_for :user

  # == Validations == #
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :phone, presence: true, on: :update
  validates :photo,
            :file_size => {
                :maximum => 2.megabytes.to_i
            }

  # == Callbacks == #

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #

end
