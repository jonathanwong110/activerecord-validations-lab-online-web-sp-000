class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { in: 6..20 }
end
