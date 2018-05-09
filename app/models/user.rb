class User < ApplicationRecord

  # == Modules == #
  rolify

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #

  # == Associations and Nested Attributes == #
  has_one :profile, dependent: :destroy
  has_many  :ratings, dependent: :destroy

  # == Validations == #
  validates_presence_of :password_digest
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { minimum: 5, maximum: 25 },
            format: { with: /\A[a-zA-Z0-9]+\z/ },
            uniqueness: { case_sensitive: false }

  # == Callbacks == #
  after_create :create_profile
  after_create :add_default_user_role

  # == Scopes and Other macros == #

  # == Instance methods == #
  has_secure_password

  # == Private == #
  private

  def add_default_user_role
    self.add_role(:member) if self.roles.blank?
  end

end
