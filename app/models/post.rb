class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 250 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :clickbait
  
  def clickbait
    if !title.nil? && (!title.include?("True Facts")) 
      return false
    end
  end
  
end
