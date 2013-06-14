class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author_id
  belongs_to :author
  has_many :comments

  include PgSearch

  pg_search_scope :search,
                  against: [:title, :body],
                  using: {
                    tsearch: { dictionary: :spanish }
                  }
end
