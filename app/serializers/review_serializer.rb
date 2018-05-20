class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user

  belongs_to :reviewable, polymorphic: true

  def user
    UserSerializer.new(object.user).attributes
  end

end
