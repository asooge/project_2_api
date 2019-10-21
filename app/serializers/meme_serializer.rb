class MemeSerializer < ActiveModel::Serializer
  attributes :id, :image, :text_1, :font_size_1, :text_2, :font_size_2, :comments, :user
  has_one :user_id
  has_many :comments
end
