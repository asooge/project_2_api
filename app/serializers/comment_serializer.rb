class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user, :created_at
  has_one :user
  has_one :meme
end
