class UpvoteSerializer < ActiveModel::Serializer
  attributes :id, :value, :user
  has_one :user
  has_one :meme
end
