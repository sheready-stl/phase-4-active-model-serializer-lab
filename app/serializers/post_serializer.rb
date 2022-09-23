class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content
  belongs_to :author
  has_many :tags, through: :post_tags

  def short_content
    "#{self.object.content.first(40)}..."
  end
end
