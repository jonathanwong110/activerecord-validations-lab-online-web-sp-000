class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 250 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :clickbait
  
  def clickbait
    if (!title.included_in?("True Facts")) || (!title.included_in?("Won't Believe")) || (!title.included_in?("Top")) || (!title.included_in?("Secret"))
      return false
    end
  end

end
