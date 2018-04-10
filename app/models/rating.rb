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
  after_save :update_average_rating

  # == Scopes and Other macros == #

  # == Instance methods == #

  # == Private == #
  private

  def update_average_rating
    ratings = self.book.ratings
    self.book.update_attribute(:avg_rating, ratings.sum(:rate)/ratings.count)
  end

end
