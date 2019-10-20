class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message
  has_one :user
  has_one :meme
end
