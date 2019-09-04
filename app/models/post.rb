class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 250 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
  validate :clickbait
  
  def clickbait
    if !(title.include?("Won't Believe" || "Secret" || "Top" || "Guess"))
      return false
    end
  end
  
  
end
