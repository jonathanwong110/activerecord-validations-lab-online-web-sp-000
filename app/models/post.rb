class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length => { :minimum => 250 }
  validates :summary, :length => { :maximum => 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :clickbait
  
  def clickbait
    if !title.nil?
      return false
    end
      if (!title.include?("True Facts")) || (!title.include?("Won't Believe")) || (!title.include?("Top")) || (!title.include?("Secret"))
      return false
    end
  end

end
