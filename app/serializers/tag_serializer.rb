class TagSerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :posts, through: :post_tags
end
