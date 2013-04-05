class Post < ActiveRecord::Base
	has_and_belongs_to_many :tags
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 3 }

  def tags_string=(string)
    tag_names = string.split(/\s*,\s*/)
    tags = tag_names.map do |name|
      Tag.find_or_create_by_name(name)
    end
    self.tags = tags
  end

  def tags_string
    tag_names = self.tags.map do |tag|
      tag.name
    end
    tag_names.join(', ')
  end
end
