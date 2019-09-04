class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 10 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
  validate :clickbait
  
  def clickbait
    if !title.nil? && (title.include?)()
  
  
end
