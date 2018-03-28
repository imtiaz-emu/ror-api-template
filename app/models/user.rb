class User < ApplicationRecord

  # == Modules == #
  rolify

  # == Constants == #

  # == Attributes == #

  # == File Uploader == #

  # == Associations and Nested Attributes == #
  has_one :profile, dependent: :destroy

  # == Validations == #
  validates_presence_of :email, :password_digest
  validates :email, uniqueness: true
  validates :name, presence: true, on: :update, length: { maximum: 20 },
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
