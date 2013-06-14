class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id
  belongs_to :author
  has_many :comments

  include PgSearch

  pg_search_scope :search,
                  against: [:title, :body],
                  associated_against: {
                    author: [:name],
                    comments: [:name, :content]
                  },
                  ignoring: :accents,
                  using: {
                    tsearch: { dictionary: :spanish }
                  }
end
