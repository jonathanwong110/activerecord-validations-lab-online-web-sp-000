class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :title, inclusion: { in: %w(Secret)}
  validates :content, :length => { :minimum => 10 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
end
