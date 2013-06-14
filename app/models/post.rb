class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id
  belongs_to :author
  has_many :comments

  def self.search(query)
    where("title ilike :query or body ilike :query", query: "%#{query}%")
  end
end
