class Post < ActiveRecord::Base
  validates :title, presence: true
  (:password, { :length => { :in => 6..20 } })
end
