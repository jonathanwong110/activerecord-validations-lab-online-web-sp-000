class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, :length => { :minimum => 10 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
  validates :clickbait, inclusion: { in: %w(Secret)}
end
