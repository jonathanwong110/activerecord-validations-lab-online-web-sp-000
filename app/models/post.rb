require 'pry'
class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 250 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :is_clickbait?
  
  def clickbait
    if !title.nil? && (!title.include?(/Won't Believe/i)) || (!title.include?(/True Facts/i)) || (!title.include?(/Top [0-9]*/i)) || (!title.include?(/Secret/i))
      return false
    end
  end

end

#validate :is_clickbait?
#
#  CLICKBAIT_PATTERNS = [
#    /Won't Believe/i,
#    /Secret/i,
#    /Top [0-9]*/i,
#    /Guess/i
#  ]
#
#  def is_clickbait?
#    if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
#      errors.add(:title, "must be clickbait")
#    end
#  end
