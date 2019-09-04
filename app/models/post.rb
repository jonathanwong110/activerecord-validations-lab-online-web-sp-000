class Post < ActiveRecord::Base
  validates :title, inclusion: { in: %w("Won't Believe", "Secret", "Top [number]", or "Guess",)}
  validates :content, :length => { :minimum => 10 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
end
